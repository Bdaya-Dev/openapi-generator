//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/triangle.dart';
import 'package:openapi/src/model/quadrilateral.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'shape_or_null.g.dart';

/// The value may be a shape or the 'null' value. This is introduced in OAS schema >= 3.1.
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class ShapeOrNull implements Built<ShapeOrNull, ShapeOrNullBuilder> {
  /// One Of [Quadrilateral], [Triangle]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'shapeType';

  static const Map<String, Type> discriminatorMapping = {
    r'Quadrilateral': Quadrilateral,
    r'Triangle': Triangle,
  };

  ShapeOrNull._();

  factory ShapeOrNull([void updates(ShapeOrNullBuilder b)]) = _$ShapeOrNull;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShapeOrNullBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShapeOrNull> get serializer => _$ShapeOrNullSerializer();
}

class _$ShapeOrNullSerializer implements PrimitiveSerializer<ShapeOrNull> {
  @override
  final Iterable<Type> types = const [ShapeOrNull, _$ShapeOrNull];

  @override
  final String wireName = r'ShapeOrNull';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShapeOrNull object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    ShapeOrNull object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ShapeOrNull deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShapeOrNullBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(ShapeOrNull.discriminatorFieldName) + 1;
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

