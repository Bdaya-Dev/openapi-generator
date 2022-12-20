export JAVA_OPTS="${JAVA_OPTS} -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5035"
set -e
# --global-property debugModels > out/debug-digrum.txt
java ${JAVA_OPTS} -jar "modules/openapi-generator-cli/target/openapi-generator-cli.jar" generate -c out/digrum_test/config.yaml 
cd out/digrum_test
flutter pub get
flutter pub run build_runner build