//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/whale.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/zebra.dart';
import 'package:openapi/src/model/pig.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'mammal.g.dart';

/// Mammal
///
/// Properties:
/// * [hasBaleen] 
/// * [hasTeeth] 
/// * [className] 
/// * [type] 
@BuiltValue()
abstract class Mammal implements Built<Mammal, MammalBuilder> {
  /// One Of [Pig], [Whale], [Zebra]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'className';

  static const Map<String, Type> discriminatorMapping = {
    r'Pig': Pig,
    r'whale': Whale,
    r'zebra': Zebra,
  };

  Mammal._();

  factory Mammal([void updates(MammalBuilder b)]) = _$Mammal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MammalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Mammal> get serializer => _$MammalSerializer();
}

class _$MammalSerializer implements PrimitiveSerializer<Mammal> {
  @override
  final Iterable<Type> types = const [Mammal, _$Mammal];

  @override
  final String wireName = r'Mammal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Mammal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Mammal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Mammal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MammalBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Mammal.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [Pig, Whale, Zebra, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'Pig':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Pig),
        ) as Pig;
        oneOfType = Pig;
        break;
      case r'whale':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Whale),
        ) as Whale;
        oneOfType = Whale;
        break;
      case r'zebra':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Zebra),
        ) as Zebra;
        oneOfType = Zebra;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class MammalTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'plains')
  static const MammalTypeEnum plains = _$mammalTypeEnum_plains;
  @BuiltValueEnumConst(wireName: r'mountain')
  static const MammalTypeEnum mountain = _$mammalTypeEnum_mountain;
  @BuiltValueEnumConst(wireName: r'grevys')
  static const MammalTypeEnum grevys = _$mammalTypeEnum_grevys;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MammalTypeEnum unknownDefaultOpenApi = _$mammalTypeEnum_unknownDefaultOpenApi;

  static Serializer<MammalTypeEnum> get serializer => _$mammalTypeEnumSerializer;

  const MammalTypeEnum._(String name): super(name);

  static BuiltSet<MammalTypeEnum> get values => _$mammalTypeEnumValues;
  static MammalTypeEnum valueOf(String name) => _$mammalTypeEnumValueOf(name);
}

