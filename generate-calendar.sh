./preprocess-openapi-yaml.sh google-discovery-to-openapi/openapi/googleapis.com/v00.00.00000/services/calendar/calendar.yaml > src/Google.Apis.Kiota.Calendar/calendar.generated.yaml
yq eval --inplace '
    # Change any to object
    .components.schemas.EventWorkingLocationProperties.properties.homeOffice.type = "object"
    ' src/Google.Apis.Kiota.Calendar/calendar.generated.yaml
kiota generate --openapi src/Google.Apis.Kiota.Calendar/calendar.generated.yaml -o src/Google.Apis.Kiota.Calendar/Generated -l CSharp -n Google.Apis.Kiota.Calendar -c CalendarApiClient -s Microsoft.Kiota.Serialization.Json.JsonSerializationWriterFactory --ds Microsoft.Kiota.Serialization.Json.JsonParseNodeFactory
rm src/Google.Apis.Kiota.Calendar/Generated/Models/GoogleApiException.cs
rm src/Google.Apis.Kiota.Calendar/Generated/Models/RequestError.cs
rm src/Google.Apis.Kiota.Calendar/Generated/Models/SingleError.cs
