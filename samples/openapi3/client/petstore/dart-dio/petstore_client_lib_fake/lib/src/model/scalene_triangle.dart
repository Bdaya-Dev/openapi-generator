//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/shape_interface.dart';
import 'package:openapi/src/model/triangle_interface.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scalene_triangle.g.dart';

/// ScaleneTriangle
///
/// Properties:
/// * [shapeType] 
/// * [triangleType] 
@BuiltValue()
abstract class ScaleneTriangle implements ShapeInterface, TriangleInterface, Built<ScaleneTriangle, ScaleneTriangleBuilder> {
  ScaleneTriangle._();

  factory ScaleneTriangle([void updates(ScaleneTriangleBuilder b)]) = _$ScaleneTriangle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScaleneTriangleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScaleneTriangle> get serializer => _$ScaleneTriangleSerializer();
}

class _$ScaleneTriangleSerializer implements PrimitiveSerializer<ScaleneTriangle> {
  @override
  final Iterable<Type> types = const [ScaleneTriangle, _$ScaleneTriangle];

  @override
  final String wireName = r'ScaleneTriangle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScaleneTriangle object, {
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
    ScaleneTriangle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScaleneTriangleBuilder result,
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
  ScaleneTriangle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScaleneTriangleBuilder();
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

