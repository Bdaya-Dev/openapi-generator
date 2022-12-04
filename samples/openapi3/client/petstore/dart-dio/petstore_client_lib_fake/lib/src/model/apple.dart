//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apple.g.dart';

/// Apple
///
/// Properties:
/// * [cultivar] 
/// * [origin] 
@BuiltValue()
abstract class Apple implements Built<Apple, AppleBuilder> {
  @BuiltValueField(wireName: r'cultivar')
  String? get cultivar;

  @BuiltValueField(wireName: r'origin')
  String? get origin;

  Apple._();

  factory Apple([void updates(AppleBuilder b)]) = _$Apple;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Apple> get serializer => _$AppleSerializer();
}

class _$AppleSerializer implements PrimitiveSerializer<Apple> {
  @override
  final Iterable<Type> types = const [Apple, _$Apple];

  @override
  final String wireName = r'Apple';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Apple object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cultivar != null) {
      yield r'cultivar';
      yield serializers.serialize(
        object.cultivar,
        specifiedType: const FullType(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Apple object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cultivar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cultivar = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Apple deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppleBuilder();
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

