// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    SignInResponse(
      token: json['token'] as String,
      userInfo:
          UserInfoResponse.fromJson(json['user_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_info': instance.userInfo.toJson(),
    };

UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) =>
    UserInfoResponse(
      id: json['id'] as int? ?? 0,
      firstname: json['firstname'] as String? ?? 'error occured',
      lastname: json['lastname'] as String? ?? '',
      accountType: json['account_type'] as String? ?? '',
      status: json['status'] as String? ?? '',
      username: json['username'] as int? ?? 0,
      email: json['email'] as String? ?? '',
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [''],
    );

Map<String, dynamic> _$UserInfoResponseToJson(UserInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'account_type': instance.accountType,
      'status': instance.status,
      'email': instance.email,
      'roles': instance.roles,
    };

InquiryItemRequest _$InquiryItemRequestFromJson(Map<String, dynamic> json) =>
    InquiryItemRequest(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      measurement: json['measurement'] as String?,
    );

Map<String, dynamic> _$InquiryItemRequestToJson(InquiryItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'measurement': instance.measurement,
    };
