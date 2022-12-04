//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'banana_req.g.dart';

/// BananaReq
///
/// Properties:
/// * [lengthCm] 
/// * [sweet] 
@BuiltValue()
abstract class BananaReq implements Built<BananaReq, BananaReqBuilder> {
  @BuiltValueField(wireName: r'lengthCm')
  num get lengthCm;

  @BuiltValueField(wireName: r'sweet')
  bool? get sweet;

  BananaReq._();

  factory BananaReq([void updates(BananaReqBuilder b)]) = _$BananaReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BananaReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BananaReq> get serializer => _$BananaReqSerializer();
}

class _$BananaReqSerializer implements PrimitiveSerializer<BananaReq> {
  @override
  final Iterable<Type> types = const [BananaReq, _$BananaReq];

  @override
  final String wireName = r'BananaReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BananaReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lengthCm';
    yield serializers.serialize(
      object.lengthCm,
      specifiedType: const FullType(num),
    );
    if (object.sweet != null) {
      yield r'sweet';
      yield serializers.serialize(
        object.sweet,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BananaReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BananaReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lengthCm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lengthCm = valueDes;
          break;
        case r'sweet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sweet = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BananaReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BananaReqBuilder();
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

