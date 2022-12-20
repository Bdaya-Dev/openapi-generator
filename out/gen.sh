#!/usr/bin/env bash
set -e
# mvn clean install
# bin/generate-samples.sh bin/configs/dart-dio* -- --global-property debugModels=true > out/debug.txt
bin/generate-samples.sh bin/configs/dart-dio-oneof-polymorphism-and-inheritance.yaml -- --global-property debugModels,debugOperations > out/debug.txt
cd samples/openapi3/client/petstore/dart-dio/oneof_polymorphism_and_inheritance
flutter pub upgrade
flutter pub run build_runner build

cd -
# cd samples/openapi3/client/petstore/dart-dio
# puby get
# puby gen