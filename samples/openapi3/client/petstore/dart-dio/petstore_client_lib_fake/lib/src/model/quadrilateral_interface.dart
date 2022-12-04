//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quadrilateral_interface.g.dart';

/// QuadrilateralInterface
///
/// Properties:
/// * [quadrilateralType] 
@BuiltValue(instantiable: false)
abstract class QuadrilateralInterface  {
  @BuiltValueField(wireName: r'quadrilateralType')
  String get quadrilateralType;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuadrilateralInterface> get serializer => _$QuadrilateralInterfaceSerializer();
}

class _$QuadrilateralInterfaceSerializer implements PrimitiveSerializer<QuadrilateralInterface> {
  @override
  final Iterable<Type> types = const [QuadrilateralInterface];

  @override
  final String wireName = r'QuadrilateralInterface';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuadrilateralInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quadrilateralType';
    yield serializers.serialize(
      object.quadrilateralType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuadrilateralInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  QuadrilateralInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($QuadrilateralInterface)) as $QuadrilateralInterface;
  }
}

/// a concrete implementation of [QuadrilateralInterface], since [QuadrilateralInterface] is not instantiable
@BuiltValue(instantiable: true)
abstract class $QuadrilateralInterface implements QuadrilateralInterface, Built<$QuadrilateralInterface, $QuadrilateralInterfaceBuilder> {
  $QuadrilateralInterface._();

  factory $QuadrilateralInterface([void Function($QuadrilateralInterfaceBuilder)? updates]) = _$$QuadrilateralInterface;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($QuadrilateralInterfaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$QuadrilateralInterface> get serializer => _$$QuadrilateralInterfaceSerializer();
}

class _$$QuadrilateralInterfaceSerializer implements PrimitiveSerializer<$QuadrilateralInterface> {
  @override
  final Iterable<Type> types = const [$QuadrilateralInterface, _$$QuadrilateralInterface];

  @override
  final String wireName = r'$QuadrilateralInterface';

  @override
  Object serialize(
    Serializers serializers,
    $QuadrilateralInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(QuadrilateralInterface))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuadrilateralInterfaceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $QuadrilateralInterface deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $QuadrilateralInterfaceBuilder();
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

