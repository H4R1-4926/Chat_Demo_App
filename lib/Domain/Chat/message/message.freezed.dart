// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get senderId => throw _privateConstructorUsedError;
  String? get senderEmail => throw _privateConstructorUsedError;
  String? get recieverId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String? senderId,
      String? senderEmail,
      String? recieverId,
      String? message,
      String? timestamp});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? senderEmail = freezed,
    Object? recieverId = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderEmail: freezed == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      recieverId: freezed == recieverId
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? senderId,
      String? senderEmail,
      String? recieverId,
      String? message,
      String? timestamp});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? senderEmail = freezed,
    Object? recieverId = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$MessageImpl(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderEmail: freezed == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      recieverId: freezed == recieverId
          ? _value.recieverId
          : recieverId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  _$MessageImpl(
      {this.senderId,
      this.senderEmail,
      this.recieverId,
      this.message,
      this.timestamp});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String? senderId;
  @override
  final String? senderEmail;
  @override
  final String? recieverId;
  @override
  final String? message;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'Message(senderId: $senderId, senderEmail: $senderEmail, recieverId: $recieverId, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderEmail, senderEmail) ||
                other.senderEmail == senderEmail) &&
            (identical(other.recieverId, recieverId) ||
                other.recieverId == recieverId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, senderId, senderEmail, recieverId, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
      {final String? senderId,
      final String? senderEmail,
      final String? recieverId,
      final String? message,
      final String? timestamp}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String? get senderId;
  @override
  String? get senderEmail;
  @override
  String? get recieverId;
  @override
  String? get message;
  @override
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
