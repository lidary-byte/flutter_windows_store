import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'dart:convert';
import 'package:flutter_windows_store/generated/json/base_entity.g.dart';

@JsonSerializable()
class BaseEntity<T> {
  int? status;
  String? message;
  T? data;

  BaseEntity({this.status, this.message, this.data});

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      $BaseEntityFromJson<T>(json);

  Map<String, dynamic> toJson() => $BaseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  get isSuccess {
    return status == 0;
  }
}
