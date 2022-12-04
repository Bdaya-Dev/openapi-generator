//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/shape_interface.dart';
import 'package:openapi/src/model/quadrilateral_interface.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_quadrilateral.g.dart';

/// SimpleQuadrilateral
///
/// Properties:
/// * [shapeType] 
/// * [quadrilateralType] 
@BuiltValue()
abstract class SimpleQuadrilateral implements QuadrilateralInterface, ShapeInterface, Built<SimpleQuadrilateral, SimpleQuadrilateralBuilder> {
  SimpleQuadrilateral._();

  factory SimpleQuadrilateral([void updates(SimpleQuadrilateralBuilder b)]) = _$SimpleQuadrilateral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleQuadrilateralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleQuadrilateral> get serializer => _$SimpleQuadrilateralSerializer();
}

class _$SimpleQuadrilateralSerializer implements PrimitiveSerializer<SimpleQuadrilateral> {
  @override
  final Iterable<Type> types = const [SimpleQuadrilateral, _$SimpleQuadrilateral];

  @override
  final String wireName = r'SimpleQuadrilateral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleQuadrilateral object, {
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
    SimpleQuadrilateral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SimpleQuadrilateralBuilder result,
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
  SimpleQuadrilateral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleQuadrilateralBuilder();
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

