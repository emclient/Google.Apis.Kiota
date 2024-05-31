./preprocess-openapi-yaml.sh google-discovery-to-openapi/openapi/googleapis.com/v00.00.00000/services/drive/drive.yaml > src/Google.Apis.Kiota.Drive/drive.generated.yaml
kiota generate --openapi src/Google.Apis.Kiota.Drive/drive.generated.yaml -o src/Google.Apis.Kiota.Drive/Generated -l CSharp -n Google.Apis.Kiota.Drive -c DriveApiClient -s Microsoft.Kiota.Serialization.Json.JsonSerializationWriterFactory --ds Microsoft.Kiota.Serialization.Json.JsonParseNodeFactory
rm src/Google.Apis.Kiota.Drive/Generated/Models/GoogleApiException.cs
rm src/Google.Apis.Kiota.Drive/Generated/Models/RequestError.cs
rm src/Google.Apis.Kiota.Drive/Generated/Models/SingleError.cs
