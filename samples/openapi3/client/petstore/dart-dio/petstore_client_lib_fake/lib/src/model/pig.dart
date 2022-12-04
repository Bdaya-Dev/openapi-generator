//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/basque_pig.dart';
import 'package:openapi/src/model/danish_pig.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'pig.g.dart';

/// Pig
///
/// Properties:
/// * [className] 
@BuiltValue()
abstract class Pig implements Built<Pig, PigBuilder> {
  /// One Of [BasquePig], [DanishPig]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'className';

  static const Map<String, Type> discriminatorMapping = {
    r'BasquePig': BasquePig,
    r'DanishPig': DanishPig,
  };

  Pig._();

  factory Pig([void updates(PigBuilder b)]) = _$Pig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Pig> get serializer => _$PigSerializer();
}

class _$PigSerializer implements PrimitiveSerializer<Pig> {
  @override
  final Iterable<Type> types = const [Pig, _$Pig];

  @override
  final String wireName = r'Pig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Pig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Pig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Pig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PigBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Pig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [BasquePig, DanishPig, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'BasquePig':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(BasquePig),
        ) as BasquePig;
        oneOfType = BasquePig;
        break;
      case r'DanishPig':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(DanishPig),
        ) as DanishPig;
        oneOfType = DanishPig;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

