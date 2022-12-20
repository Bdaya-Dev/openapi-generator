set -e
java -jar "modules/openapi-generator-cli/target/openapi-generator-cli.jar" generate -c out/aptos_test/config.yaml --global-property debugModels > out/debug-aptos.txt
cd out/aptos_test
flutter pub get
flutter pub run build_runner build