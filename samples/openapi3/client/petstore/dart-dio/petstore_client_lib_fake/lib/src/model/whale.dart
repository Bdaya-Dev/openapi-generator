//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'whale.g.dart';

/// Whale
///
/// Properties:
/// * [hasBaleen] 
/// * [hasTeeth] 
/// * [className] 
@BuiltValue()
abstract class Whale implements Built<Whale, WhaleBuilder> {
  @BuiltValueField(wireName: r'hasBaleen')
  bool? get hasBaleen;

  @BuiltValueField(wireName: r'hasTeeth')
  bool? get hasTeeth;

  @BuiltValueField(wireName: r'className')
  String get className;

  Whale._();

  factory Whale([void updates(WhaleBuilder b)]) = _$Whale;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhaleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Whale> get serializer => _$WhaleSerializer();
}

class _$WhaleSerializer implements PrimitiveSerializer<Whale> {
  @override
  final Iterable<Type> types = const [Whale, _$Whale];

  @override
  final String wireName = r'Whale';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Whale object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hasBaleen != null) {
      yield r'hasBaleen';
      yield serializers.serialize(
        object.hasBaleen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasTeeth != null) {
      yield r'hasTeeth';
      yield serializers.serialize(
        object.hasTeeth,
        specifiedType: const FullType(bool),
      );
    }
    yield r'className';
    yield serializers.serialize(
      object.className,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Whale object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WhaleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hasBaleen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasBaleen = valueDes;
          break;
        case r'hasTeeth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasTeeth = valueDes;
          break;
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
  Whale deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhaleBuilder();
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

