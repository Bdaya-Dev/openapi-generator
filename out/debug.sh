mvn clean install -DskipTests
export JAVA_OPTS="${JAVA_OPTS} -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5035"
bin/generate-samples.sh bin/configs/dart-dio-next-petstore-client-lib-fake.yaml 