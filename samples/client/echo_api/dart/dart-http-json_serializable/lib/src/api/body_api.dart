//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:openapi/src/deserialize.dart';
import 'package:http/http.dart' as http;

import 'package:openapi/src/model/pet.dart';

class BodyApi {
  final String _basePath;
  final http.Client? _client;

  const BodyApi(this._client, this._basePath);

  /// Test body parameter(s)
  /// Test body parameter(s)
  ///
  /// Parameters:
  /// * [pet] - Pet object that needs to be added to the store
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  ///
  /// Throws [DioError] if API call or serialization fails

  Future<Pet> testEchoBodyPet({
    Pet? pet,
    Map<String, String>? headers,
  }) async {
    final _path = r'/echo/body/Pet';
    final _uri = Uri.parse(_basePath + _path);

    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(pet);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Pet _responseData;

    try {
      _responseData =
          deserialize<Pet, Pet>(_response.data!, 'Pet', growable: true);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Pet>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
