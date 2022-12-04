//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/child_cat_all_of.dart';
import 'package:openapi/src/model/parent_pet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_cat.g.dart';

/// ChildCat
///
/// Properties:
/// * [petType] 
/// * [name] 
@BuiltValue()
abstract class ChildCat implements ChildCatAllOf, ParentPet, Built<ChildCat, ChildCatBuilder> {
  static const String discriminatorFieldName = r'pet_type';

  ChildCat._();

  factory ChildCat([void updates(ChildCatBuilder b)]) = _$ChildCat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChildCatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChildCat> get serializer => _$ChildCatSerializer();
}

class _$ChildCatSerializer implements PrimitiveSerializer<ChildCat> {
  @override
  final Iterable<Type> types = const [ChildCat, _$ChildCat];

  @override
  final String wireName = r'ChildCat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChildCat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'pet_type';
    yield serializers.serialize(
      object.petType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChildCat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChildCatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'pet_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.petType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChildCat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChildCatBuilder();
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

