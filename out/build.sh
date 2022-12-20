#!/usr/bin/env bash
set -e
mvn clean install -DskipTests
#copy to windows
cp modules/openapi-generator-cli/target/openapi-generator-cli.jar /mnt/c/tools/openapi-generator-jar/