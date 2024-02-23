// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      senderId: json['senderId'] as String?,
      senderEmail: json['senderEmail'] as String?,
      recieverId: json['recieverId'] as String?,
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderEmail': instance.senderEmail,
      'recieverId': instance.recieverId,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };
