//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'basque_pig.g.dart';

/// BasquePig
///
/// Properties:
/// * [className] 
@BuiltValue()
abstract class BasquePig implements Built<BasquePig, BasquePigBuilder> {
  @BuiltValueField(wireName: r'className')
  String get className;

  BasquePig._();

  factory BasquePig([void updates(BasquePigBuilder b)]) = _$BasquePig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BasquePigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BasquePig> get serializer => _$BasquePigSerializer();
}

class _$BasquePigSerializer implements PrimitiveSerializer<BasquePig> {
  @override
  final Iterable<Type> types = const [BasquePig, _$BasquePig];

  @override
  final String wireName = r'BasquePig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BasquePig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'className';
    yield serializers.serialize(
      object.className,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BasquePig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BasquePigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'className':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.className = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BasquePig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BasquePigBuilder();
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

