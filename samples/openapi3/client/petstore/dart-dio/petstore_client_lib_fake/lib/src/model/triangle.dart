//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/equilateral_triangle.dart';
import 'package:openapi/src/model/isosceles_triangle.dart';
import 'package:openapi/src/model/scalene_triangle.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'triangle.g.dart';

/// Triangle
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
@BuiltValue()
abstract class Triangle implements Built<Triangle, TriangleBuilder> {
  /// One Of [EquilateralTriangle], [IsoscelesTriangle], [ScaleneTriangle]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'triangleType';

  static const Map<String, Type> discriminatorMapping = {
    r'EquilateralTriangle': EquilateralTriangle,
    r'IsoscelesTriangle': IsoscelesTriangle,
    r'ScaleneTriangle': ScaleneTriangle,
  };

  Triangle._();

  factory Triangle([void updates(TriangleBuilder b)]) = _$Triangle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TriangleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Triangle> get serializer => _$TriangleSerializer();
}

class _$TriangleSerializer implements PrimitiveSerializer<Triangle> {
  @override
  final Iterable<Type> types = const [Triangle, _$Triangle];

  @override
  final String wireName = r'Triangle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Triangle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Triangle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Triangle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TriangleBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Triangle.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [EquilateralTriangle, IsoscelesTriangle, ScaleneTriangle, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'EquilateralTriangle':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(EquilateralTriangle),
        ) as EquilateralTriangle;
        oneOfType = EquilateralTriangle;
        break;
      case r'IsoscelesTriangle':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(IsoscelesTriangle),
        ) as IsoscelesTriangle;
        oneOfType = IsoscelesTriangle;
        break;
      case r'ScaleneTriangle':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ScaleneTriangle),
        ) as ScaleneTriangle;
        oneOfType = ScaleneTriangle;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

