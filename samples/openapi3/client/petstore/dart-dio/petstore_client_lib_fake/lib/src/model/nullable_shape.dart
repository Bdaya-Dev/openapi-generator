//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/triangle.dart';
import 'package:openapi/src/model/quadrilateral.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nullable_shape.g.dart';

/// The value may be a shape or the 'null' value. The 'nullable' attribute was introduced in OAS schema >= 3.0 and has been deprecated in OAS schema >= 3.1.
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class NullableShape implements Built<NullableShape, NullableShapeBuilder> {
  /// One Of [Quadrilateral], [Triangle]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'shapeType';

  static const Map<String, Type> discriminatorMapping = {
    r'Quadrilateral': Quadrilateral,
    r'Triangle': Triangle,
  };

  NullableShape._();

  factory NullableShape([void updates(NullableShapeBuilder b)]) = _$NullableShape;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NullableShapeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NullableShape> get serializer => _$NullableShapeSerializer();
}

class _$NullableShapeSerializer implements PrimitiveSerializer<NullableShape> {
  @override
  final Iterable<Type> types = const [NullableShape, _$NullableShape];

  @override
  final String wireName = r'NullableShape';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NullableShape object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    NullableShape object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  NullableShape deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NullableShapeBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(NullableShape.discriminatorFieldName) + 1;
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

