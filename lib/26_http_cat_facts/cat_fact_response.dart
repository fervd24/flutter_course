// ignore_for_file: public_member_api_docs, sort_constructors_first
//TODO: RAFAEL RENTERIA - AGREGAR POST
import 'dart:convert';

class CatFactsResponse {
  
  CatFactsResponse({
    required this.fact,
    required this.length,
  });

  String fact;
  int length;

   factory CatFactsResponse.fromJson(String str) => CatFactsResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CatFactsResponse.fromMap(Map<String, dynamic> json) => CatFactsResponse(
        fact: json['fact'],
        length: json['length']
    );

    Map<String, dynamic> toMap() => {
        "length": length,
        "fact": fact,
    };
}
