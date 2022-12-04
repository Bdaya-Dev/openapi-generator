//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/shape_interface.dart';
import 'package:openapi/src/model/triangle_interface.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'equilateral_triangle.g.dart';

/// EquilateralTriangle
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
@BuiltValue()
abstract class EquilateralTriangle implements ShapeInterface, TriangleInterface, Built<EquilateralTriangle, EquilateralTriangleBuilder> {
  EquilateralTriangle._();

  factory EquilateralTriangle([void updates(EquilateralTriangleBuilder b)]) = _$EquilateralTriangle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EquilateralTriangleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EquilateralTriangle> get serializer => _$EquilateralTriangleSerializer();
}

class _$EquilateralTriangleSerializer implements PrimitiveSerializer<EquilateralTriangle> {
  @override
  final Iterable<Type> types = const [EquilateralTriangle, _$EquilateralTriangle];

  @override
  final String wireName = r'EquilateralTriangle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EquilateralTriangle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'shapeType';
    yield serializers.serialize(
      object.shapeType,
      specifiedType: const FullType(String),
    );
    yield r'triangleType';
    yield serializers.serialize(
      object.triangleType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EquilateralTriangle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EquilateralTriangleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shapeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shapeType = valueDes;
          break;
        case r'triangleType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.triangleType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EquilateralTriangle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EquilateralTriangleBuilder();
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

