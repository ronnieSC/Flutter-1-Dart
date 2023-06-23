// To parse this JSON data, do
//
//     final requestResponseRespuesta = requestResponseRespuestaFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/persona.dart';

RequestResponseRespuesta requestResponseRespuestaFromJson(String str) =>
    RequestResponseRespuesta.fromJson(json.decode(str));

String requestResponseRespuestaToJson(RequestResponseRespuesta data) =>
    json.encode(data.toJson());

class RequestResponseRespuesta {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;
  Support support;

  RequestResponseRespuesta({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory RequestResponseRespuesta.fromJson(Map<String, dynamic> json) =>
      RequestResponseRespuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}

class Support {
  String url;
  String text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
