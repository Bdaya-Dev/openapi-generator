//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/repository_base.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/models.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/api_response.dart';
import 'package:openapi/src/model/pet.dart';

part 'pet_api.g.dart';

class PetApi {

  final PetApiRaw rawApi;
  final SerializationRepositoryBase _repository;

  const PetApi(this.rawApi, this._repository);

  /// Add a new pet to the store
  /// 
  ///
  /// Parameters:
  /// * [pet] - Pet object that needs to be added to the store
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> addPet({ 
    required Pet pet,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    
    Object? _bodyData;
    _bodyData = await encodeBodyParameter(_repository, pet, const TypeInfo(
        
    
    Pet
    )

);    

    final _response = await rawApi.addPet(
      
      body: _bodyData,
      requestContentType: 'application/json',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    return _response;
  }

  /// Deletes a pet
  /// 
  ///
  /// Parameters:
  /// * [petId] - Pet id to delete
  /// * [apiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deletePet({ 
    required int petId,
    required String apiKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    

    final _response = await rawApi.deletePet(
      
      petId: encodeStringParameter(_repository, petId, const TypeInfo(
        
    
    int
    )

,)!,
      apiKey: encodeStringParameter(_repository, apiKey, const TypeInfo(
        
    
    String
    )

,)!, 

      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    return _response;
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  ///
  /// Parameters:
  /// * [status] - Status values that need to be considered for filter
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pet>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Pet>>> findPetsByStatus({ 
    @Deprecated('status is deprecated') required BuiltList<StatusEnum> status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    

    final _response = await rawApi.findPetsByStatus(
      
      status: encodeQueryParameter(_repository, status, const TypeInfo(
    BuiltList, [
        
        const TypeInfo(
        
    StatusEnum
    
    )

,
    ])

, format: ListFormat.csv,)!,

      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    BuiltList<Pet>? _responseData;

    try {
      final rawResponse = _response.data;
       _responseData = rawResponse == null ? null : await decodeResponse(_repository, rawResponse, const TypeInfo(
    BuiltList, [
        
        const TypeInfo(
        
    Pet
    
    )

,
    ])

);     
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Pet>>(
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

  /// Finds Pets by tags
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  ///
  /// Parameters:
  /// * [tags] - Tags to filter by
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltSet<Pet>] as data
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<BuiltSet<Pet>>> findPetsByTags({ 
    required BuiltSet<String> tags,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    

    final _response = await rawApi.findPetsByTags(
      
      tags: encodeQueryParameter(_repository, tags, const TypeInfo(
    BuiltSet, [
        
        const TypeInfo(
        
    String
    
    )

,
    ])

, format: ListFormat.csv,)!,

      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    BuiltSet<Pet>? _responseData;

    try {
      final rawResponse = _response.data;
       _responseData = rawResponse == null ? null : await decodeResponse(_repository, rawResponse, const TypeInfo(
    BuiltSet, [
        
        const TypeInfo(
        
    Pet
    
    )

,
    ])

);     
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltSet<Pet>>(
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

  /// Find pet by ID
  /// Returns a single pet
  ///
  /// Parameters:
  /// * [petId] - ID of pet to return
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Pet] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Pet>> getPetById({ 
    required int petId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    

    final _response = await rawApi.getPetById(
      
      petId: encodeStringParameter(_repository, petId, const TypeInfo(
        
    
    int
    )

,)!,

      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    Pet? _responseData;

    try {
      final rawResponse = _response.data;
       _responseData = rawResponse == null ? null : await decodeResponse(_repository, rawResponse, const TypeInfo(
        
    Pet
    
    )

);     
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
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

  /// Update an existing pet
  /// 
  ///
  /// Parameters:
  /// * [pet] - Pet object that needs to be added to the store
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updatePet({ 
    required Pet pet,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    
    Object? _bodyData;
    _bodyData = await encodeBodyParameter(_repository, pet, const TypeInfo(
        
    
    Pet
    )

);    

    final _response = await rawApi.updatePet(
      
      body: _bodyData,
      requestContentType: 'application/json',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    return _response;
  }

  /// Updates a pet in the store with form data
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet that needs to be updated
  /// * [name] - Updated name of the pet
  /// * [status] - Updated status of the pet
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updatePetWithForm({ 
    required int petId,
    required String name,
    required String status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    
    Object? _bodyData;
    final _bodyMap = <String, dynamic>{
      if (name != null) r'name': encodeFormParameter(_repository, name, const TypeInfo(
        
    
    String
    )

),
      if (status != null) r'status': encodeFormParameter(_repository, status, const TypeInfo(
        
    
    String
    )

),
    };
    _bodyData = _bodyMap;

    final _response = await rawApi.updatePetWithForm(
      
      petId: encodeStringParameter(_repository, petId, const TypeInfo(
        
    
    int
    )

,)!,
      body: _bodyData,
      requestContentType: 'application/x-www-form-urlencoded',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    return _response;
  }

  /// uploads an image
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet to update
  /// * [additionalMetadata] - Additional data to pass to server
  /// * [file] - file to upload
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ApiResponse>> uploadFile({ 
    required int petId,
    required String additionalMetadata,
    required MultipartFile file,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    
    Object? _bodyData;
    final _bodyMap = <String, dynamic>{
      if (additionalMetadata != null) r'additionalMetadata': encodeFormParameter(_repository, additionalMetadata, const TypeInfo(
        
    
    String
    )

),
      if (file != null) r'file': encodeFormParameter(_repository, file, const TypeInfo(
        
    
    MultipartFile
    )

),
    };
    _bodyData = FormData.fromMap(_bodyMap);

    final _response = await rawApi.uploadFile(
      
      petId: encodeStringParameter(_repository, petId, const TypeInfo(
        
    
    int
    )

,)!,
      body: _bodyData,
      requestContentType: 'multipart/form-data',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    ApiResponse? _responseData;

    try {
      final rawResponse = _response.data;
       _responseData = rawResponse == null ? null : await decodeResponse(_repository, rawResponse, const TypeInfo(
        
    ApiResponse
    
    )

);     
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ApiResponse>(
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

  /// uploads an image (required)
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet to update
  /// * [requiredFile] - file to upload
  /// * [additionalMetadata] - Additional data to pass to server
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ApiResponse>> uploadFileWithRequiredFile({ 
    required int petId,
    required MultipartFile requiredFile,
    required String additionalMetadata,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {    
    Object? _bodyData;
    final _bodyMap = <String, dynamic>{
      if (additionalMetadata != null) r'additionalMetadata': encodeFormParameter(_repository, additionalMetadata, const TypeInfo(
        
    
    String
    )

),
      r'requiredFile': encodeFormParameter(_repository, requiredFile, const TypeInfo(
        
    
    MultipartFile
    )

),
    };
    _bodyData = FormData.fromMap(_bodyMap);

    final _response = await rawApi.uploadFileWithRequiredFile(
      
      petId: encodeStringParameter(_repository, petId, const TypeInfo(
        
    
    int
    )

,)!,
      body: _bodyData,
      requestContentType: 'multipart/form-data',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      validateStatus: validateStatus,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );    

    ApiResponse? _responseData;

    try {
      final rawResponse = _response.data;
       _responseData = rawResponse == null ? null : await decodeResponse(_repository, rawResponse, const TypeInfo(
        
    ApiResponse
    
    )

);     
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ApiResponse>(
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
class PetApiRaw {

  final Dio _dio;

  const PetApiRaw(this._dio);

  /// Add a new pet to the store
  /// 
  ///
  /// Parameters:
  /// * [pet] - Pet object that needs to be added to the store
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> addPet({ 
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Deletes a pet
  /// 
  ///
  /// Parameters:
  /// * [petId] - Pet id to delete
  /// * [apiKey] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deletePet({ 
    required String petId,
    String? apiKey,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        if (apiKey != null) r'api_key': apiKey,
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  ///
  /// Parameters:
  /// * [status] - Status values that need to be considered for filter
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Pet>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Object>> findPetsByStatus({ 
    @Deprecated('status is deprecated') required Object status,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/findByStatus';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'status': status,
    };

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Finds Pets by tags
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  ///
  /// Parameters:
  /// * [tags] - Tags to filter by
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltSet<Pet>] as data
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<Object>> findPetsByTags({ 
    required Object tags,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/findByTags';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'tags': tags,
    };

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Find pet by ID
  /// Returns a single pet
  ///
  /// Parameters:
  /// * [petId] - ID of pet to return
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Pet] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Object>> getPetById({ 
    required String petId,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'api_key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Update an existing pet
  /// 
  ///
  /// Parameters:
  /// * [pet] - Pet object that needs to be added to the store
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updatePet({ 
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet';
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Updates a pet in the store with form data
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet that needs to be updated
  /// * [name] - Updated name of the pet
  /// * [status] - Updated status of the pet
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> updatePetWithForm({ 
    required String petId,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// uploads an image
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet to update
  /// * [additionalMetadata] - Additional data to pass to server
  /// * [file] - file to upload
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Object>> uploadFile({ 
    required String petId,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/pet/{petId}/uploadImage'.replaceAll('{' r'petId' '}', petId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// uploads an image (required)
  /// 
  ///
  /// Parameters:
  /// * [petId] - ID of pet to update
  /// * [requiredFile] - file to upload
  /// * [additionalMetadata] - Additional data to pass to server
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ApiResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Object>> uploadFileWithRequiredFile({ 
    required String petId,
    Object? body,
    String? requestContentType,
    String? acceptContentType,
    ResponseType? responseType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fake/{petId}/uploadImageWithRequiredFile'.replaceAll('{' r'petId' '}', petId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (acceptContentType != null) 'Accept': acceptContentType,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      contentType: requestContentType,
      responseType: responseType,
      validateStatus: validateStatus,
    );

    return await _dio.request<Object>(
      _path,
      data: body,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

}




@Deprecated('StatusEnum has been deprecated')
class StatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'available')
  static const StatusEnum available = _$statusEnum_available;
  @BuiltValueEnumConst(wireName: r'pending')
  static const StatusEnum pending = _$statusEnum_pending;
  @BuiltValueEnumConst(wireName: r'sold')
  static const StatusEnum sold = _$statusEnum_sold;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatusEnum unknownDefaultOpenApi = _$statusEnum_unknownDefaultOpenApi;

  static Serializer<StatusEnum> get serializer => _$statusEnumSerializer;

  const StatusEnum._(String name): super(name);

  static BuiltSet<StatusEnum> get values => _$statusEnumValues;
  static StatusEnum valueOf(String name) => _$statusEnumValueOf(name);
}















