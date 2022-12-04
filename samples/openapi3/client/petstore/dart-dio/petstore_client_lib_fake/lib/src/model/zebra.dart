//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'zebra.g.dart';

/// Zebra
///
/// Properties:
/// * [type] 
/// * [className] 
@BuiltValue()
abstract class Zebra implements Built<Zebra, ZebraBuilder> {
  @BuiltValueField(wireName: r'type')
  ZebraTypeEnum? get type;
  // enum typeEnum {  plains,  mountain,  grevys,  };

  @BuiltValueField(wireName: r'className')
  String get className;

  Zebra._();

  factory Zebra([void updates(ZebraBuilder b)]) = _$Zebra;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ZebraBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Zebra> get serializer => _$ZebraSerializer();
}

class _$ZebraSerializer implements PrimitiveSerializer<Zebra> {
  @override
  final Iterable<Type> types = const [Zebra, _$Zebra];

  @override
  final String wireName = r'Zebra';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Zebra object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ZebraTypeEnum),
      );
    }
    yield r'className';
    yield serializers.serialize(
      object.className,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Zebra object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ZebraBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ZebraTypeEnum),
          ) as ZebraTypeEnum;
          result.type = valueDes;
          break;
        case r'className':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.className = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Zebra deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ZebraBuilder();
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

class ZebraTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'plains')
  static const ZebraTypeEnum plains = _$zebraTypeEnum_plains;
  @BuiltValueEnumConst(wireName: r'mountain')
  static const ZebraTypeEnum mountain = _$zebraTypeEnum_mountain;
  @BuiltValueEnumConst(wireName: r'grevys')
  static const ZebraTypeEnum grevys = _$zebraTypeEnum_grevys;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ZebraTypeEnum unknownDefaultOpenApi = _$zebraTypeEnum_unknownDefaultOpenApi;

  static Serializer<ZebraTypeEnum> get serializer => _$zebraTypeEnumSerializer;

  const ZebraTypeEnum._(String name): super(name);

  static BuiltSet<ZebraTypeEnum> get values => _$zebraTypeEnumValues;
  static ZebraTypeEnum valueOf(String name) => _$zebraTypeEnumValueOf(name);
}

