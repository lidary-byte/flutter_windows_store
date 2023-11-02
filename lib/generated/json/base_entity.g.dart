import 'package:flutter_windows_store/entity/base_entity.dart';
import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';

BaseEntity<T> $BaseEntityFromJson<T>(Map<String, dynamic> json) {
  final BaseEntity<T> baseEntity = BaseEntity();
  final int? code = jsonConvert.convert<int>(json['status']);
  if (code != null) {
    baseEntity.status = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    baseEntity.message = message;
  }
  final T? data = JsonConvert.fromJsonAsT<T>(json['data']);
  if (data != null) {
    baseEntity.data = data;
  }
  return baseEntity;
}

Map<String, dynamic> $BaseEntityToJson(BaseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension BaseEntityExtension<T> on BaseEntity {
  BaseEntity copyWith({
    int? code,
    String? message,
    T? data,
  }) {
    return BaseEntity()
      ..status = code ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}