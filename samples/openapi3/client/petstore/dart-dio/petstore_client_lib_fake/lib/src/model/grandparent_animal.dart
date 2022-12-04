//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/child_cat.dart';
import 'package:openapi/src/model/parent_pet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grandparent_animal.g.dart';

/// GrandparentAnimal
///
/// Properties:
/// * [petType] 
@BuiltValue(instantiable: false)
abstract class GrandparentAnimal  {
  @BuiltValueField(wireName: r'pet_type')
  String get petType;

  static const String discriminatorFieldName = r'pet_type';

  static const Map<String, Type> discriminatorMapping = {
    r'ChildCat': ChildCat,
    r'ParentPet': ParentPet,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<GrandparentAnimal> get serializer => _$GrandparentAnimalSerializer();
}

class _$GrandparentAnimalSerializer implements PrimitiveSerializer<GrandparentAnimal> {
  @override
  final Iterable<Type> types = const [GrandparentAnimal];

  @override
  final String wireName = r'GrandparentAnimal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrandparentAnimal object, {
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
    GrandparentAnimal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ChildCat) {
      return serializers.serialize(object, specifiedType: FullType(ChildCat))!;
    }
    if (object is ParentPet) {
      return serializers.serialize(object, specifiedType: FullType(ParentPet))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  GrandparentAnimal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(GrandparentAnimal.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ChildCat':
        return serializers.deserialize(serialized, specifiedType: FullType(ChildCat)) as ChildCat;
      case r'ParentPet':
        return serializers.deserialize(serialized, specifiedType: FullType(ParentPet)) as ParentPet;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($GrandparentAnimal)) as $GrandparentAnimal;
    }
  }
}

/// a concrete implementation of [GrandparentAnimal], since [GrandparentAnimal] is not instantiable
@BuiltValue(instantiable: true)
abstract class $GrandparentAnimal implements GrandparentAnimal, Built<$GrandparentAnimal, $GrandparentAnimalBuilder> {
  $GrandparentAnimal._();

  factory $GrandparentAnimal([void Function($GrandparentAnimalBuilder)? updates]) = _$$GrandparentAnimal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($GrandparentAnimalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$GrandparentAnimal> get serializer => _$$GrandparentAnimalSerializer();
}

class _$$GrandparentAnimalSerializer implements PrimitiveSerializer<$GrandparentAnimal> {
  @override
  final Iterable<Type> types = const [$GrandparentAnimal, _$$GrandparentAnimal];

  @override
  final String wireName = r'$GrandparentAnimal';

  @override
  Object serialize(
    Serializers serializers,
    $GrandparentAnimal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(GrandparentAnimal))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GrandparentAnimalBuilder result,
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
  $GrandparentAnimal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $GrandparentAnimalBuilder();
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

