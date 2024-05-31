git clone https://github.com/stackql/google-discovery-to-openapi.git
pushd google-discovery-to-openapi
npm install
chmod +x ./bin/google-discovery-to-openapi.mjs
./bin/google-discovery-to-openapi.mjs generate googleapis.com
popd
