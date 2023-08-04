// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthTokenResponse _$AuthTokenResponseFromJson(Map<String, dynamic> json) =>
    AuthTokenResponse(
      token: TokenBean.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthTokenResponseToJson(AuthTokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

TokenBean _$TokenBeanFromJson(Map<String, dynamic> json) => TokenBean(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$TokenBeanToJson(TokenBean instance) => <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
