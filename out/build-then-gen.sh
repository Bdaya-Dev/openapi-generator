#!/usr/bin/env bash
set -e
mvn clean install -DskipTests
bin/generate-samples.sh bin/configs/dart-dio-petstore-client-lib-fake.yaml -- --global-property debugModels=true > out/debug.txt
cd samples/openapi3/client/petstore/dart-dio/petstore_client_lib_fake
flutter pub get
flutter pub run build_runner build