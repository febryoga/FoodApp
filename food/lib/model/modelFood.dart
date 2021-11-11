// To parse this JSON data, do
//
//     final modelFood = modelFoodFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

List<ModelFood> modelFoodFromJson(String str) => List<ModelFood>.from(json.decode(str).map((x) => ModelFood.fromJson(x)));

String modelFoodToJson(List<ModelFood> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelFood {
    ModelFood({
        required this.id,
        required this.nama,
        required this.kategori,
        required this.utama,
    });

    String id;
    String nama;
    String kategori;
    String utama;

    factory ModelFood.fromJson(Map<String, dynamic> json) => ModelFood(
        id: json["id"],
        nama: json["nama"],
        kategori: json["kategori"],
        utama: json["utama "],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "kategori": kategori,
        "utama ": utama,
    };
}
