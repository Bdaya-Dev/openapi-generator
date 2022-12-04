//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_output_element_representation.g.dart';

/// ActivityOutputElementRepresentation
///
/// Properties:
/// * [prop1] 
/// * [prop2] 
@BuiltValue()
abstract class ActivityOutputElementRepresentation implements Built<ActivityOutputElementRepresentation, ActivityOutputElementRepresentationBuilder> {
  @BuiltValueField(wireName: r'prop1')
  String? get prop1;

  @BuiltValueField(wireName: r'prop2')
  JsonObject? get prop2;

  ActivityOutputElementRepresentation._();

  factory ActivityOutputElementRepresentation([void updates(ActivityOutputElementRepresentationBuilder b)]) = _$ActivityOutputElementRepresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityOutputElementRepresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityOutputElementRepresentation> get serializer => _$ActivityOutputElementRepresentationSerializer();
}

class _$ActivityOutputElementRepresentationSerializer implements PrimitiveSerializer<ActivityOutputElementRepresentation> {
  @override
  final Iterable<Type> types = const [ActivityOutputElementRepresentation, _$ActivityOutputElementRepresentation];

  @override
  final String wireName = r'ActivityOutputElementRepresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityOutputElementRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prop1 != null) {
      yield r'prop1';
      yield serializers.serialize(
        object.prop1,
        specifiedType: const FullType(String),
      );
    }
    if (object.prop2 != null) {
      yield r'prop2';
      yield serializers.serialize(
        object.prop2,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityOutputElementRepresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityOutputElementRepresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prop1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prop1 = valueDes;
          break;
        case r'prop2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.prop2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivityOutputElementRepresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityOutputElementRepresentationBuilder();
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

