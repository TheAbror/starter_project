import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;

import 'package:starter_project/core/api/custom_converter.dart';
import 'package:starter_project/ui/pages/profile_page/services/user_services.dart';

class ApiProvider {
  static late ChopperClient _client;
  static late UserService userService;

  ///Services
  static create({String? token}) {
    _client = ChopperClient(
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 40),
      ),
      services: [
        UserService.create(),
      ],
      interceptors: getInterceptors(token),
      converter: CustomDataConverter(),
    );

    userService = _client.getService<UserService>();
  }

  static List getInterceptors(token) {
    List interceptors = [];

    interceptors.add(HttpLoggingInterceptor());

    interceptors.add(HeadersInterceptor({
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: token != null ? 'Bearer $token' : '',
    }));

    return interceptors;
  }

  static dispose() {
    _client.dispose();
  }
}
