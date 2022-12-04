//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shape_interface.g.dart';

/// ShapeInterface
///
/// Properties:
/// * [shapeType] 
@BuiltValue(instantiable: false)
abstract class ShapeInterface  {
  @BuiltValueField(wireName: r'shapeType')
  String get shapeType;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShapeInterface> get serializer => _$ShapeInterfaceSerializer();
}

class _$ShapeInterfaceSerializer implements PrimitiveSerializer<ShapeInterface> {
  @override
  final Iterable<Type> types = const [ShapeInterface];

  @override
  final String wireName = r'ShapeInterface';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShapeInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'shapeType';
    yield serializers.serialize(
      object.shapeType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ShapeInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ShapeInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ShapeInterface)) as $ShapeInterface;
  }
}

/// a concrete implementation of [ShapeInterface], since [ShapeInterface] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ShapeInterface implements ShapeInterface, Built<$ShapeInterface, $ShapeInterfaceBuilder> {
  $ShapeInterface._();

  factory $ShapeInterface([void Function($ShapeInterfaceBuilder)? updates]) = _$$ShapeInterface;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ShapeInterfaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ShapeInterface> get serializer => _$$ShapeInterfaceSerializer();
}

class _$$ShapeInterfaceSerializer implements PrimitiveSerializer<$ShapeInterface> {
  @override
  final Iterable<Type> types = const [$ShapeInterface, _$$ShapeInterface];

  @override
  final String wireName = r'$ShapeInterface';

  @override
  Object serialize(
    Serializers serializers,
    $ShapeInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ShapeInterface))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShapeInterfaceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ShapeInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ShapeInterfaceBuilder();
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

