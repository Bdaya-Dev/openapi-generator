//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_cat_all_of.g.dart';

/// ChildCatAllOf
///
/// Properties:
/// * [name] 
@BuiltValue(instantiable: false)
abstract class ChildCatAllOf  {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChildCatAllOf> get serializer => _$ChildCatAllOfSerializer();
}

class _$ChildCatAllOfSerializer implements PrimitiveSerializer<ChildCatAllOf> {
  @override
  final Iterable<Type> types = const [ChildCatAllOf];

  @override
  final String wireName = r'ChildCatAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChildCatAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChildCatAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ChildCatAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ChildCatAllOf)) as $ChildCatAllOf;
  }
}

/// a concrete implementation of [ChildCatAllOf], since [ChildCatAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ChildCatAllOf implements ChildCatAllOf, Built<$ChildCatAllOf, $ChildCatAllOfBuilder> {
  $ChildCatAllOf._();

  factory $ChildCatAllOf([void Function($ChildCatAllOfBuilder)? updates]) = _$$ChildCatAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ChildCatAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ChildCatAllOf> get serializer => _$$ChildCatAllOfSerializer();
}

class _$$ChildCatAllOfSerializer implements PrimitiveSerializer<$ChildCatAllOf> {
  @override
  final Iterable<Type> types = const [$ChildCatAllOf, _$$ChildCatAllOf];

  @override
  final String wireName = r'$ChildCatAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ChildCatAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ChildCatAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChildCatAllOfBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ChildCatAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ChildCatAllOfBuilder();
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

