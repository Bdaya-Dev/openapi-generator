//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/shape_interface.dart';
import 'package:openapi/src/model/quadrilateral_interface.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complex_quadrilateral.g.dart';

/// ComplexQuadrilateral
///
/// Properties:
/// * [shapeType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class ComplexQuadrilateral implements QuadrilateralInterface, ShapeInterface, Built<ComplexQuadrilateral, ComplexQuadrilateralBuilder> {
  ComplexQuadrilateral._();

  factory ComplexQuadrilateral([void updates(ComplexQuadrilateralBuilder b)]) = _$ComplexQuadrilateral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComplexQuadrilateralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComplexQuadrilateral> get serializer => _$ComplexQuadrilateralSerializer();
}

class _$ComplexQuadrilateralSerializer implements PrimitiveSerializer<ComplexQuadrilateral> {
  @override
  final Iterable<Type> types = const [ComplexQuadrilateral, _$ComplexQuadrilateral];

  @override
  final String wireName = r'ComplexQuadrilateral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComplexQuadrilateral object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quadrilateralType';
    yield serializers.serialize(
      object.quadrilateralType,
      specifiedType: const FullType(String),
    );
    yield r'shapeType';
    yield serializers.serialize(
      object.shapeType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ComplexQuadrilateral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComplexQuadrilateralBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quadrilateralType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quadrilateralType = valueDes;
          break;
        case r'shapeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shapeType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComplexQuadrilateral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexQuadrilateralBuilder();
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

