yq eval '
    # Update OpenAPI version
    .openapi = "3.0.0" |
    # Delete `id`, it was renamed to $id
    del(.components.schemas.[].id) |
    # Delete annotations
    del(.. | select(has("annotations")).annotations) |
    # Update default values to match their type
    with(.. | select(.default? == "false"); .default = false) |
    with(.. | select(.default? == "true"); .default = true) |
    with(.. | select(.default? == "0"); .default = 0) |
    # Delete non-standard enumDescriptions and enumDeprecated
    del(.. | select(has("enumDescriptions")).enumDescriptions) |
    del(.. | select(has("enumDeprecated")).enumDeprecated) |
    # Add error responses
    .paths.[].[]?.["responses"]? += {"4XX":{"description":"Failure response","content":{"application/json":{"schema":{"$ref":"#/components/schemas/GoogleApiException"}}}}} |
    .paths.[].[]?.["responses"]? += {"5XX":{"description":"Failure response","content":{"application/json":{"schema":{"$ref":"#/components/schemas/GoogleApiException"}}}}} |
    . * load("error.yaml")
    ' $1
