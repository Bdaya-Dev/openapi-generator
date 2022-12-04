//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'polymorphic_property.g.dart';

/// PolymorphicProperty
@BuiltValue()
abstract class PolymorphicProperty implements Built<PolymorphicProperty, PolymorphicPropertyBuilder> {
  /// One Of [BuiltList<String>], [JsonObject], [String], [bool]
  OneOf get oneOf;

  PolymorphicProperty._();

  factory PolymorphicProperty([void updates(PolymorphicPropertyBuilder b)]) = _$PolymorphicProperty;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolymorphicPropertyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolymorphicProperty> get serializer => _$PolymorphicPropertySerializer();
}

class _$PolymorphicPropertySerializer implements PrimitiveSerializer<PolymorphicProperty> {
  @override
  final Iterable<Type> types = const [PolymorphicProperty, _$PolymorphicProperty];

  @override
  final String wireName = r'PolymorphicProperty';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolymorphicProperty object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PolymorphicProperty object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PolymorphicProperty deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolymorphicPropertyBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(bool), FullType(String), FullType(JsonObject), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

