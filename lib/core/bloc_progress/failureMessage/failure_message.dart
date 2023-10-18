import 'package:json_annotation/json_annotation.dart';

part 'failure_message.g.dart';

@JsonSerializable(includeIfNull: true, explicitToJson: true)
class ErrorResponse {
  String? message;

  ErrorResponse({
    this.message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
