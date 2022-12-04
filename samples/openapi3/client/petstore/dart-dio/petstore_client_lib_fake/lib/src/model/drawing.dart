//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/nullable_shape.dart';
import 'package:openapi/src/model/shape_or_null.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/fruit.dart';
import 'package:openapi/src/model/shape.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'drawing.g.dart';

/// Drawing
///
/// Properties:
/// * [mainShape] 
/// * [shapeOrNull] 
/// * [nullableShape] 
/// * [shapes] 
@BuiltValue()
abstract class Drawing implements Built<Drawing, DrawingBuilder> {
  @BuiltValueField(wireName: r'mainShape')
  Shape? get mainShape;

  @BuiltValueField(wireName: r'shapeOrNull')
  ShapeOrNull? get shapeOrNull;

  @BuiltValueField(wireName: r'nullableShape')
  NullableShape? get nullableShape;

  @BuiltValueField(wireName: r'shapes')
  BuiltList<Shape>? get shapes;

  Drawing._();

  factory Drawing([void updates(DrawingBuilder b)]) = _$Drawing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DrawingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Drawing> get serializer => _$DrawingSerializer();
}

class _$DrawingSerializer implements PrimitiveSerializer<Drawing> {
  @override
  final Iterable<Type> types = const [Drawing, _$Drawing];

  @override
  final String wireName = r'Drawing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Drawing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mainShape != null) {
      yield r'mainShape';
      yield serializers.serialize(
        object.mainShape,
        specifiedType: const FullType(Shape),
      );
    }
    if (object.shapeOrNull != null) {
      yield r'shapeOrNull';
      yield serializers.serialize(
        object.shapeOrNull,
        specifiedType: const FullType.nullable(ShapeOrNull),
      );
    }
    if (object.nullableShape != null) {
      yield r'nullableShape';
      yield serializers.serialize(
        object.nullableShape,
        specifiedType: const FullType.nullable(NullableShape),
      );
    }
    if (object.shapes != null) {
      yield r'shapes';
      yield serializers.serialize(
        object.shapes,
        specifiedType: const FullType(BuiltList, [FullType(Shape)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Drawing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DrawingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mainShape':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Shape),
          ) as Shape;
          result.mainShape.replace(valueDes);
          break;
        case r'shapeOrNull':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ShapeOrNull),
          ) as ShapeOrNull?;
          if (valueDes == null) continue;
          result.shapeOrNull.replace(valueDes);
          break;
        case r'nullableShape':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NullableShape),
          ) as NullableShape?;
          if (valueDes == null) continue;
          result.nullableShape.replace(valueDes);
          break;
        case r'shapes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Shape)]),
          ) as BuiltList<Shape>;
          result.shapes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Drawing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DrawingBuilder();
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

