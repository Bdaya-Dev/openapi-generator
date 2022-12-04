//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'triangle_interface.g.dart';

/// TriangleInterface
///
/// Properties:
/// * [triangleType] 
@BuiltValue(instantiable: false)
abstract class TriangleInterface  {
  @BuiltValueField(wireName: r'triangleType')
  String get triangleType;

  @BuiltValueSerializer(custom: true)
  static Serializer<TriangleInterface> get serializer => _$TriangleInterfaceSerializer();
}

class _$TriangleInterfaceSerializer implements PrimitiveSerializer<TriangleInterface> {
  @override
  final Iterable<Type> types = const [TriangleInterface];

  @override
  final String wireName = r'TriangleInterface';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TriangleInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triangleType';
    yield serializers.serialize(
      object.triangleType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TriangleInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TriangleInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($TriangleInterface)) as $TriangleInterface;
  }
}

/// a concrete implementation of [TriangleInterface], since [TriangleInterface] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TriangleInterface implements TriangleInterface, Built<$TriangleInterface, $TriangleInterfaceBuilder> {
  $TriangleInterface._();

  factory $TriangleInterface([void Function($TriangleInterfaceBuilder)? updates]) = _$$TriangleInterface;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TriangleInterfaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TriangleInterface> get serializer => _$$TriangleInterfaceSerializer();
}

class _$$TriangleInterfaceSerializer implements PrimitiveSerializer<$TriangleInterface> {
  @override
  final Iterable<Type> types = const [$TriangleInterface, _$$TriangleInterface];

  @override
  final String wireName = r'$TriangleInterface';

  @override
  Object serialize(
    Serializers serializers,
    $TriangleInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TriangleInterface))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TriangleInterfaceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $TriangleInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TriangleInterfaceBuilder();
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

