// To parse this JSON data, do
//
//     final produc = producFromJson(jsonString);

import 'dart:convert';

Produc producFromJson(String str) => Produc.fromJson(json.decode(str));

String producToJson(Produc data) => json.encode(data.toJson());

class Produc {
  Produc({
    this.data,
  });

  List<Datum> data;

  factory Produc.fromJson(Map<String, dynamic> json) => Produc(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.nama,
    this.harga,
    this.deskripsiPendek,
    this.deskripsiPanjang,
    this.jenis,
    this.kategori,
    this.url,
  });

  String id;
  String nama;
  String harga;
  String deskripsiPendek;
  String deskripsiPanjang;
  String jenis;
  String kategori;
  String url;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    nama: json["nama"],
    harga: json["harga"],
    deskripsiPendek: json["deskripsi_pendek"],
    deskripsiPanjang: json["deskripsi_panjang"],
    jenis: json["jenis"],
    kategori: json["kategori"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama": nama,
    "harga": harga,
    "deskripsi_pendek": deskripsiPendek,
    "deskripsi_panjang": deskripsiPanjang,
    "jenis": jenis,
    "kategori": kategori,
    "url": url,
  };
}
