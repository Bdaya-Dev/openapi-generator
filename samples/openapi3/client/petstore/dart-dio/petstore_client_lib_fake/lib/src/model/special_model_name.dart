//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_model_name.g.dart';

/// SpecialModelName
///
/// Properties:
/// * [dollarSpecialLeftSquareBracketPropertyPeriodNameRightSquareBracket] 
/// * [specialModelPeriodName] 
@BuiltValue()
abstract class SpecialModelName implements Built<SpecialModelName, SpecialModelNameBuilder> {
  @BuiltValueField(wireName: r'$special[property.name]')
  int? get dollarSpecialLeftSquareBracketPropertyPeriodNameRightSquareBracket;

  @BuiltValueField(wireName: r'_special_model.name_')
  String? get specialModelPeriodName;

  SpecialModelName._();

  factory SpecialModelName([void updates(SpecialModelNameBuilder b)]) = _$SpecialModelName;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialModelNameBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialModelName> get serializer => _$SpecialModelNameSerializer();
}

class _$SpecialModelNameSerializer implements PrimitiveSerializer<SpecialModelName> {
  @override
  final Iterable<Type> types = const [SpecialModelName, _$SpecialModelName];

  @override
  final String wireName = r'SpecialModelName';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialModelName object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dollarSpecialLeftSquareBracketPropertyPeriodNameRightSquareBracket != null) {
      yield r'$special[property.name]';
      yield serializers.serialize(
        object.dollarSpecialLeftSquareBracketPropertyPeriodNameRightSquareBracket,
        specifiedType: const FullType(int),
      );
    }
    if (object.specialModelPeriodName != null) {
      yield r'_special_model.name_';
      yield serializers.serialize(
        object.specialModelPeriodName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialModelName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialModelNameBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'$special[property.name]':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dollarSpecialLeftSquareBracketPropertyPeriodNameRightSquareBracket = valueDes;
          break;
        case r'_special_model.name_':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.specialModelPeriodName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialModelName deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialModelNameBuilder();
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

