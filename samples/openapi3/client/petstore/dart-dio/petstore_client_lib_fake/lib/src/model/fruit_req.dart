//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/apple_req.dart';
import 'package:openapi/src/model/banana_req.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'fruit_req.g.dart';

/// FruitReq
///
/// Properties:
/// * [cultivar] 
/// * [mealy] 
/// * [lengthCm] 
/// * [sweet] 
@BuiltValue()
abstract class FruitReq implements Built<FruitReq, FruitReqBuilder> {
  /// One Of [AppleReq], [BananaReq]
  OneOf get oneOf;

  FruitReq._();

  factory FruitReq([void updates(FruitReqBuilder b)]) = _$FruitReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FruitReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FruitReq> get serializer => _$FruitReqSerializer();
}

class _$FruitReqSerializer implements PrimitiveSerializer<FruitReq> {
  @override
  final Iterable<Type> types = const [FruitReq, _$FruitReq];

  @override
  final String wireName = r'FruitReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FruitReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    FruitReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  FruitReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FruitReqBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(AppleReq), FullType(BananaReq), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

