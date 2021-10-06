# ./mvnw clean package
# wsl ./bin/generate-samples.sh bin/configs/dart-dio-next-dio-http-petstore-client-lib-fake* -- --global-property debugOperations > log.txt
$Currentlocation = Get-Location
Set-Location samples/openapi3/client/petstore/dart-dio-next/dio_http_petstore_client_lib_fake
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
Set-Location $Currentlocation
Set-Location samples/openapi3/client/petstore/dart-dio-next/petstore_client_lib_fake
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
Set-Location $Currentlocation