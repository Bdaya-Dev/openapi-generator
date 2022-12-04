//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/child_cat.dart';
import 'package:openapi/src/model/grandparent_animal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parent_pet.g.dart';

/// ParentPet
///
/// Properties:
/// * [petType] 
@BuiltValue(instantiable: false)
abstract class ParentPet implements GrandparentAnimal {
  static const String discriminatorFieldName = r'pet_type';

  static const Map<String, Type> discriminatorMapping = {
    r'ChildCat': ChildCat,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<ParentPet> get serializer => _$ParentPetSerializer();
}

class _$ParentPetSerializer implements PrimitiveSerializer<ParentPet> {
  @override
  final Iterable<Type> types = const [ParentPet];

  @override
  final String wireName = r'ParentPet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParentPet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pet_type';
    yield serializers.serialize(
      object.petType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParentPet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ChildCat) {
      return serializers.serialize(object, specifiedType: FullType(ChildCat))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ParentPet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(ParentPet.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ChildCat':
        return serializers.deserialize(serialized, specifiedType: FullType(ChildCat)) as ChildCat;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($ParentPet)) as $ParentPet;
    }
  }
}

/// a concrete implementation of [ParentPet], since [ParentPet] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ParentPet implements ParentPet, Built<$ParentPet, $ParentPetBuilder> {
  $ParentPet._();

  factory $ParentPet([void Function($ParentPetBuilder)? updates]) = _$$ParentPet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ParentPetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ParentPet> get serializer => _$$ParentPetSerializer();
}

class _$$ParentPetSerializer implements PrimitiveSerializer<$ParentPet> {
  @override
  final Iterable<Type> types = const [$ParentPet, _$$ParentPet];

  @override
  final String wireName = r'$ParentPet';

  @override
  Object serialize(
    Serializers serializers,
    $ParentPet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ParentPet))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParentPetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $ParentPet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ParentPetBuilder();
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

