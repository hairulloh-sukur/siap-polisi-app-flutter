// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'dart:convert';

Auth authFromJson(String str) => Auth.fromJson(json.decode(str));

String authToJson(Auth data) => json.encode(data.toJson());

class Auth {
    Auth({
        required this.nrp,
        required this.nohp,
        required this.anggota,
    });

    String nrp;
    String nohp;
    String anggota;

    factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        nrp: json["nrp"],
        nohp: json["nohp"],
        anggota: json["anggota"],
    );

    Map<String, dynamic> toJson() => {
        "nrp": nrp,
        "nohp": nohp,
        "anggota": anggota,
    };
}
