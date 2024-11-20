// To parse this JSON data, do
//
//     final ProductEntry = ProductEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> ProductEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String ProductEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String nama;
    int harga;
    String description;
    int rating;
    String imageUrl;

    Fields({
        required this.user,
        required this.nama,
        required this.harga,
        required this.description,
        required this.rating,
        required this.imageUrl,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        nama: json["nama"],
        harga: json["harga"],
        description: json["description"],
        rating: json["rating"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "nama": nama,
        "harga": harga,
        "description": description,
        "rating": rating,
        "image_url": imageUrl,
    };
}