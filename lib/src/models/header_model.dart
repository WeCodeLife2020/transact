// To parse this JSON data, do
//
//     final headerModel = headerModelFromJson(jsonString);

import 'dart:convert';

HeaderModel headerModelFromJson(String str) => HeaderModel.fromJson(json.decode(str));

String headerModelToJson(HeaderModel data) => json.encode(data.toJson());

class HeaderModel {
  HeaderModel({
    this.authorization,
    this.xSession,
    this.xRequestTime,
    this.xUdid,
    this.xAccessMode,
    this.xReferenceId,
    this.xUser,
    this.xUserId,
    this.xTenantId,
    this.xPropertyCode,
  });

  String? authorization;
  String? xSession;
  String? xRequestTime;
  String? xUdid;
  String? xAccessMode;
  String? xReferenceId;
  String? xUser;
  String? xUserId;
  String? xTenantId;
  String? xPropertyCode;

  factory HeaderModel.fromJson(Map<String, dynamic> json) => HeaderModel(
    authorization: json["Authorization"] ,
    xSession: json["X-Session"] ,
    xRequestTime: json["X-RequestTime"] ,
    xUdid: json["X-UDID"] ,
    xAccessMode: json["X-AccessMode"] ,
    xReferenceId: json["X-ReferenceId"] ,
    xUser: json["X-User"] ,
    xUserId: json["X-UserId"],
    xTenantId: json["X-TenantId"] ,
    xPropertyCode: json["X-PropertyCode"] ,
  );

  Map<String, dynamic> toJson() => {
    "Authorization": authorization ,
    "X-Session": xSession,
    "X-RequestTime": xRequestTime ,
    "X-UDID": xUdid ,
    "X-AccessMode": xAccessMode ,
    "X-ReferenceId": xReferenceId ,
    "X-User": xUser ,
    "X-UserId": xUserId ,
    "X-TenantId": xTenantId ,
    "X-PropertyCode": xPropertyCode ,
  };
}
