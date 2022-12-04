//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/activity_output_element_representation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity.g.dart';

/// test map of maps
///
/// Properties:
/// * [activityOutputs] 
@BuiltValue()
abstract class Activity implements Built<Activity, ActivityBuilder> {
  @BuiltValueField(wireName: r'activity_outputs')
  BuiltMap<String, BuiltList<ActivityOutputElementRepresentation>>? get activityOutputs;

  Activity._();

  factory Activity([void updates(ActivityBuilder b)]) = _$Activity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Activity> get serializer => _$ActivitySerializer();
}

class _$ActivitySerializer implements PrimitiveSerializer<Activity> {
  @override
  final Iterable<Type> types = const [Activity, _$Activity];

  @override
  final String wireName = r'Activity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Activity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.activityOutputs != null) {
      yield r'activity_outputs';
      yield serializers.serialize(
        object.activityOutputs,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(ActivityOutputElementRepresentation)])]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Activity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activity_outputs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(ActivityOutputElementRepresentation)])]),
          ) as BuiltMap<String, BuiltList<ActivityOutputElementRepresentation>>;
          result.activityOutputs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Activity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityBuilder();
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

