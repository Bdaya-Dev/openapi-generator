//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'danish_pig.g.dart';

/// DanishPig
///
/// Properties:
/// * [className] 
@BuiltValue()
abstract class DanishPig implements Built<DanishPig, DanishPigBuilder> {
  @BuiltValueField(wireName: r'className')
  String get className;

  DanishPig._();

  factory DanishPig([void updates(DanishPigBuilder b)]) = _$DanishPig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DanishPigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DanishPig> get serializer => _$DanishPigSerializer();
}

class _$DanishPigSerializer implements PrimitiveSerializer<DanishPig> {
  @override
  final Iterable<Type> types = const [DanishPig, _$DanishPig];

  @override
  final String wireName = r'DanishPig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DanishPig object, {
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
    DanishPig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DanishPigBuilder result,
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
  DanishPig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DanishPigBuilder();
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

