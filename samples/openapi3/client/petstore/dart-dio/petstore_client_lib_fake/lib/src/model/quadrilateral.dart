//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/simple_quadrilateral.dart';
import 'package:openapi/src/model/complex_quadrilateral.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'quadrilateral.g.dart';

/// Quadrilateral
///
/// Properties:
/// * [shapeType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class Quadrilateral implements Built<Quadrilateral, QuadrilateralBuilder> {
  /// One Of [ComplexQuadrilateral], [SimpleQuadrilateral]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'quadrilateralType';

  static const Map<String, Type> discriminatorMapping = {
    r'ComplexQuadrilateral': ComplexQuadrilateral,
    r'SimpleQuadrilateral': SimpleQuadrilateral,
  };

  Quadrilateral._();

  factory Quadrilateral([void updates(QuadrilateralBuilder b)]) = _$Quadrilateral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuadrilateralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Quadrilateral> get serializer => _$QuadrilateralSerializer();
}

class _$QuadrilateralSerializer implements PrimitiveSerializer<Quadrilateral> {
  @override
  final Iterable<Type> types = const [Quadrilateral, _$Quadrilateral];

  @override
  final String wireName = r'Quadrilateral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Quadrilateral object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Quadrilateral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Quadrilateral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuadrilateralBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Quadrilateral.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [ComplexQuadrilateral, SimpleQuadrilateral, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'ComplexQuadrilateral':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ComplexQuadrilateral),
        ) as ComplexQuadrilateral;
        oneOfType = ComplexQuadrilateral;
        break;
      case r'SimpleQuadrilateral':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(SimpleQuadrilateral),
        ) as SimpleQuadrilateral;
        oneOfType = SimpleQuadrilateral;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

