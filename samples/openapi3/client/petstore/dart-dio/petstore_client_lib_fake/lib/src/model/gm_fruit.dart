//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/apple.dart';
import 'package:openapi/src/model/banana.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'gm_fruit.g.dart';

/// GmFruit
///
/// Properties:
/// * [color] 
/// * [cultivar] 
/// * [origin] 
/// * [lengthCm] 
@BuiltValue()
abstract class GmFruit implements Built<GmFruit, GmFruitBuilder> {
  @BuiltValueField(wireName: r'color')
  String? get color;

  /// Any Of [Apple], [Banana]
  AnyOf get anyOf;

  GmFruit._();

  factory GmFruit([void updates(GmFruitBuilder b)]) = _$GmFruit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GmFruitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GmFruit> get serializer => _$GmFruitSerializer();
}

class _$GmFruitSerializer implements PrimitiveSerializer<GmFruit> {
  @override
  final Iterable<Type> types = const [GmFruit, _$GmFruit];

  @override
  final String wireName = r'GmFruit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GmFruit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GmFruit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    final result = _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
    for (var _valueEntry in anyOf.values.entries) {
      final _typeIndex = _valueEntry.key;
      final _type = anyOf.types[_typeIndex];
      final _value = _valueEntry.value;
      result.addAll(serializers.serialize(_value, specifiedType: FullType(_type)) as Iterable<Object?>);
    }
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GmFruitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GmFruit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GmFruitBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType.nullable(Apple), FullType(Banana), ]);
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
    anyOfDataSrc = unhandled;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

