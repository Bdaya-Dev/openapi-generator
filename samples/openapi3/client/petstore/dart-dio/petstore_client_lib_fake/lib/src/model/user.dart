//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [id] 
/// * [username] 
/// * [firstName] 
/// * [lastName] 
/// * [email] 
/// * [password] 
/// * [phone] 
/// * [userStatus] - User Status
/// * [objectWithNoDeclaredProps] - test code generation for objects Value must be a map of strings to values. It cannot be the 'null' value.
/// * [objectWithNoDeclaredPropsNullable] - test code generation for nullable objects. Value must be a map of strings to values or the 'null' value.
/// * [anyTypeProp] - test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. See https://github.com/OAI/OpenAPI-Specification/issues/1389
/// * [anyTypePropNullable] - test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. The 'nullable' attribute does not change the allowed values.
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// User Status
  @BuiltValueField(wireName: r'userStatus')
  int? get userStatus;

  /// test code generation for objects Value must be a map of strings to values. It cannot be the 'null' value.
  @BuiltValueField(wireName: r'objectWithNoDeclaredProps')
  JsonObject? get objectWithNoDeclaredProps;

  /// test code generation for nullable objects. Value must be a map of strings to values or the 'null' value.
  @BuiltValueField(wireName: r'objectWithNoDeclaredPropsNullable')
  JsonObject? get objectWithNoDeclaredPropsNullable;

  /// test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. See https://github.com/OAI/OpenAPI-Specification/issues/1389
  @BuiltValueField(wireName: r'anyTypeProp')
  JsonObject? get anyTypeProp;

  /// test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. The 'nullable' attribute does not change the allowed values.
  @BuiltValueField(wireName: r'anyTypePropNullable')
  JsonObject? get anyTypePropNullable;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.userStatus != null) {
      yield r'userStatus';
      yield serializers.serialize(
        object.userStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.objectWithNoDeclaredProps != null) {
      yield r'objectWithNoDeclaredProps';
      yield serializers.serialize(
        object.objectWithNoDeclaredProps,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.objectWithNoDeclaredPropsNullable != null) {
      yield r'objectWithNoDeclaredPropsNullable';
      yield serializers.serialize(
        object.objectWithNoDeclaredPropsNullable,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.anyTypeProp != null) {
      yield r'anyTypeProp';
      yield serializers.serialize(
        object.anyTypeProp,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.anyTypePropNullable != null) {
      yield r'anyTypePropNullable';
      yield serializers.serialize(
        object.anyTypePropNullable,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'userStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userStatus = valueDes;
          break;
        case r'objectWithNoDeclaredProps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.objectWithNoDeclaredProps = valueDes;
          break;
        case r'objectWithNoDeclaredPropsNullable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.objectWithNoDeclaredPropsNullable = valueDes;
          break;
        case r'anyTypeProp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.anyTypeProp = valueDes;
          break;
        case r'anyTypePropNullable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.anyTypePropNullable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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

