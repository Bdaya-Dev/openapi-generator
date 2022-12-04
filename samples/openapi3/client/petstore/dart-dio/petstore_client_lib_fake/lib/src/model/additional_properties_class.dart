//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'additional_properties_class.g.dart';

/// AdditionalPropertiesClass
///
/// Properties:
/// * [mapProperty] 
/// * [mapOfMapProperty] 
/// * [anytype1] 
/// * [mapWithUndeclaredPropertiesAnytype1] 
/// * [mapWithUndeclaredPropertiesAnytype2] 
/// * [mapWithUndeclaredPropertiesAnytype3] 
/// * [emptyMap] - an object with no declared properties and no undeclared properties, hence it's an empty map.
/// * [mapWithUndeclaredPropertiesString] 
@BuiltValue()
abstract class AdditionalPropertiesClass implements Built<AdditionalPropertiesClass, AdditionalPropertiesClassBuilder> {
  @BuiltValueField(wireName: r'map_property')
  BuiltMap<String, String>? get mapProperty;

  @BuiltValueField(wireName: r'map_of_map_property')
  BuiltMap<String, BuiltMap<String, String>>? get mapOfMapProperty;

  @BuiltValueField(wireName: r'anytype_1')
  JsonObject? get anytype1;

  @BuiltValueField(wireName: r'map_with_undeclared_properties_anytype_1')
  JsonObject? get mapWithUndeclaredPropertiesAnytype1;

  @BuiltValueField(wireName: r'map_with_undeclared_properties_anytype_2')
  JsonObject? get mapWithUndeclaredPropertiesAnytype2;

  @BuiltValueField(wireName: r'map_with_undeclared_properties_anytype_3')
  BuiltMap<String, JsonObject?>? get mapWithUndeclaredPropertiesAnytype3;

  /// an object with no declared properties and no undeclared properties, hence it's an empty map.
  @BuiltValueField(wireName: r'empty_map')
  JsonObject? get emptyMap;

  @BuiltValueField(wireName: r'map_with_undeclared_properties_string')
  BuiltMap<String, String>? get mapWithUndeclaredPropertiesString;

  AdditionalPropertiesClass._();

  factory AdditionalPropertiesClass([void updates(AdditionalPropertiesClassBuilder b)]) = _$AdditionalPropertiesClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdditionalPropertiesClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdditionalPropertiesClass> get serializer => _$AdditionalPropertiesClassSerializer();
}

class _$AdditionalPropertiesClassSerializer implements PrimitiveSerializer<AdditionalPropertiesClass> {
  @override
  final Iterable<Type> types = const [AdditionalPropertiesClass, _$AdditionalPropertiesClass];

  @override
  final String wireName = r'AdditionalPropertiesClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdditionalPropertiesClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mapProperty != null) {
      yield r'map_property';
      yield serializers.serialize(
        object.mapProperty,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.mapOfMapProperty != null) {
      yield r'map_of_map_property';
      yield serializers.serialize(
        object.mapOfMapProperty,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(String)])]),
      );
    }
    if (object.anytype1 != null) {
      yield r'anytype_1';
      yield serializers.serialize(
        object.anytype1,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.mapWithUndeclaredPropertiesAnytype1 != null) {
      yield r'map_with_undeclared_properties_anytype_1';
      yield serializers.serialize(
        object.mapWithUndeclaredPropertiesAnytype1,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.mapWithUndeclaredPropertiesAnytype2 != null) {
      yield r'map_with_undeclared_properties_anytype_2';
      yield serializers.serialize(
        object.mapWithUndeclaredPropertiesAnytype2,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.mapWithUndeclaredPropertiesAnytype3 != null) {
      yield r'map_with_undeclared_properties_anytype_3';
      yield serializers.serialize(
        object.mapWithUndeclaredPropertiesAnytype3,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.emptyMap != null) {
      yield r'empty_map';
      yield serializers.serialize(
        object.emptyMap,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.mapWithUndeclaredPropertiesString != null) {
      yield r'map_with_undeclared_properties_string';
      yield serializers.serialize(
        object.mapWithUndeclaredPropertiesString,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdditionalPropertiesClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdditionalPropertiesClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'map_property':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.mapProperty.replace(valueDes);
          break;
        case r'map_of_map_property':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltMap, [FullType(String), FullType(String)])]),
          ) as BuiltMap<String, BuiltMap<String, String>>;
          result.mapOfMapProperty.replace(valueDes);
          break;
        case r'anytype_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.anytype1 = valueDes;
          break;
        case r'map_with_undeclared_properties_anytype_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.mapWithUndeclaredPropertiesAnytype1 = valueDes;
          break;
        case r'map_with_undeclared_properties_anytype_2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.mapWithUndeclaredPropertiesAnytype2 = valueDes;
          break;
        case r'map_with_undeclared_properties_anytype_3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.mapWithUndeclaredPropertiesAnytype3.replace(valueDes);
          break;
        case r'empty_map':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.emptyMap = valueDes;
          break;
        case r'map_with_undeclared_properties_string':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.mapWithUndeclaredPropertiesString.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdditionalPropertiesClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdditionalPropertiesClassBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

