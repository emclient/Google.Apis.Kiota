./preprocess-openapi-yaml.sh google-discovery-to-openapi/openapi/googleapis.com/v00.00.00000/services/people/people.yaml > src/Google.Apis.Kiota.People/people.generated.yaml
kiota generate --openapi src/Google.Apis.Kiota.People/people.generated.yaml -o src/Google.Apis.Kiota.People/Generated -l CSharp -n Google.Apis.Kiota.People -c PeopleApiClient -s Microsoft.Kiota.Serialization.Json.JsonSerializationWriterFactory --ds Microsoft.Kiota.Serialization.Json.JsonParseNodeFactory
rm src/Google.Apis.Kiota.People/Generated/Models/GoogleApiException.cs
rm src/Google.Apis.Kiota.People/Generated/Models/RequestError.cs
rm src/Google.Apis.Kiota.People/Generated/Models/SingleError.cs
