./preprocess-openapi-yaml.sh google-discovery-to-openapi/openapi/googleapis.com/v00.00.00000/services/gmail/gmail.yaml > src/Google.Apis.Kiota.Gmail/gmail.generated.yaml
kiota generate --openapi src/Google.Apis.Kiota.Gmail/gmail.generated.yaml -o src/Google.Apis.Kiota.Gmail/Generated -l CSharp -n Google.Apis.Kiota.Gmail -c GmailApiClient -s Microsoft.Kiota.Serialization.Json.JsonSerializationWriterFactory --ds Microsoft.Kiota.Serialization.Json.JsonParseNodeFactory
rm src/Google.Apis.Kiota.Gmail/Generated/Models/GoogleApiException.cs
rm src/Google.Apis.Kiota.Gmail/Generated/Models/RequestError.cs
rm src/Google.Apis.Kiota.Gmail/Generated/Models/SingleError.cs
