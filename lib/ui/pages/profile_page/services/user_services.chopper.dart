// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserService extends UserService {
  _$UserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserService;

  @override
  Future<Response<UserInfoResponse>> getUserInfo() {
    final $url = 'http://192.168.100.25:9150/edulab_udea/api/v1/signin';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserInfoResponse, UserInfoResponse>($request);
  }
}
