import 'dart:convert';

BaseModel<T, t> serialize<T, t>(Map<String, dynamic> json) {
  return BaseModel.fromJson(json);
}

String deserialize<T, t>(BaseModel<T, t> data) {
  return json.encode(data);
}

class BaseModel<T, t> {
  BaseModel({this.status, this.message, this.data, this.type});

  BaseModel.fromJson(Map<String, dynamic> json) {
    message = json.containsKey('message') ? json['message'] : '';
    code = json.containsKey('code') ? json['code'] : '';
    status = json['status'];
    data = json.containsKey('data') ? json['data'] : null;
  }

  dynamic status;
  dynamic code;
  dynamic message;
  dynamic data;
  t? type;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message ?? '';
    data['data'] = this.data;
    return data;
  }

  @override
  String toString() {
    return 'BaseModel{message: $message}';
  }
}
