//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apple_req.g.dart';

/// AppleReq
///
/// Properties:
/// * [cultivar] 
/// * [mealy] 
@BuiltValue()
abstract class AppleReq implements Built<AppleReq, AppleReqBuilder> {
  @BuiltValueField(wireName: r'cultivar')
  String get cultivar;

  @BuiltValueField(wireName: r'mealy')
  bool? get mealy;

  AppleReq._();

  factory AppleReq([void updates(AppleReqBuilder b)]) = _$AppleReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppleReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppleReq> get serializer => _$AppleReqSerializer();
}

class _$AppleReqSerializer implements PrimitiveSerializer<AppleReq> {
  @override
  final Iterable<Type> types = const [AppleReq, _$AppleReq];

  @override
  final String wireName = r'AppleReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppleReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cultivar';
    yield serializers.serialize(
      object.cultivar,
      specifiedType: const FullType(String),
    );
    if (object.mealy != null) {
      yield r'mealy';
      yield serializers.serialize(
        object.mealy,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppleReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppleReqBuilder result,
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
        case r'mealy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mealy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppleReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppleReqBuilder();
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

