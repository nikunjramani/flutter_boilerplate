import 'package:json_annotation/json_annotation.dart';

part 'auth_token_response.g.dart';

@JsonSerializable()
class AuthTokenResponse {
  @JsonKey(name: 'token') TokenBean token;

  AuthTokenResponse({required this.token});

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) => _$AuthTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthTokenResponseToJson(this);
}

@JsonSerializable()
class TokenBean {
  @JsonKey(name: 'refresh') String refresh;
  @JsonKey(name: 'access') String access;

  TokenBean({required this.refresh, required this.access});

  factory TokenBean.fromJson(Map<String, dynamic> json) => _$TokenBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TokenBeanToJson(this);
}

