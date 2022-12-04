//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/triangle.dart';
import 'package:openapi/src/model/quadrilateral.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'shape.g.dart';

/// Shape
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class Shape implements Built<Shape, ShapeBuilder> {
  /// One Of [Quadrilateral], [Triangle]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'shapeType';

  static const Map<String, Type> discriminatorMapping = {
    r'Quadrilateral': Quadrilateral,
    r'Triangle': Triangle,
  };

  Shape._();

  factory Shape([void updates(ShapeBuilder b)]) = _$Shape;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShapeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Shape> get serializer => _$ShapeSerializer();
}

class _$ShapeSerializer implements PrimitiveSerializer<Shape> {
  @override
  final Iterable<Type> types = const [Shape, _$Shape];

  @override
  final String wireName = r'Shape';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Shape object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Shape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Shape deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShapeBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Shape.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [Quadrilateral, Triangle, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'Quadrilateral':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Quadrilateral),
        ) as Quadrilateral;
        oneOfType = Quadrilateral;
        break;
      case r'Triangle':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Triangle),
        ) as Triangle;
        oneOfType = Triangle;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

