import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  String? cod;
  String? message;

  ErrorModel({this.cod, this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
