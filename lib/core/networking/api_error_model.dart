import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel{
    final int? code;
    final String? message;

    ApiErrorModel({this.code, required this.message});

    factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);
    Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

// command for generating json_serializable
// flutter pub run build_runner build --delete-conflicting-outputs