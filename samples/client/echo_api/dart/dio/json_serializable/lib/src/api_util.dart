import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:openapi/models.dart';

/// Format the given form parameter object into something that Dio can handle.
Object? encodeFormParameter<T extends Object?>(
  SerializationRepositoryBase repository,
  T value,
  TypeInfo type,
) {
  return repository.serialize(
      value,
      type,
  );
}

String? encodeStringParameter<T extends Object?>(
  SerializationRepositoryBase repository,
  T value,
  TypeInfo type,
) {
  return repository.serialize(value, type).toString();
}

Future<Object?> encodeBodyParameter<T extends Object?>(
  SerializationRepositoryBase repository,
  T value,
  TypeInfo type,
) async {
    return await repository.serializeAsync(
        value,
        type,
    );
}

Object? encodeQueryParameter<T extends Object?>(
  SerializationRepositoryBase repository,
  T value,
  TypeInfo type, {
  ListFormat format = ListFormat.multi,
}) {
    if (value == null) {
        return null;
    }
    if (value is String || value is num || value is bool) {
        return value;
    }
    if (value is Uint8List) {
        // Currently not sure how to serialize this
        return value;
    }
    final serialized = repository.serialize(
        value,
        type,
    );
    return serialized;
}

ListParam<Object?> encodeCollectionQueryParameter<T extends Object?>(
  SerializationRepositoryBase repository,
  Iterable<T> value,
  TypeInfo type, {
  ListFormat format = ListFormat.multi,
}) {
    final serialized = repository.serialize(
        value,
        type,
    );
    if (serialized == null) {
      return ListParam([], format);
    }
    if (serialized is Iterable) {
        return ListParam(serialized.toList(), format);
    }
    throw ArgumentError('Invalid value passed to encodeCollectionQueryParameter');
}

Future<TOutput?> decodeResponse<TOutput, TInput extends Object>(SerializationRepositoryBase repository, TInput value, TypeInfo type) async {
  return await repository.deserializeAsync(value, type);
}
