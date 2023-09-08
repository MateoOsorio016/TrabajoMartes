// To parse this JSON data, do
//
//     final producto = productoFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());



class DataModel {
  DataModel({
    required this.productos
  });
  
  List<Product> productos;

  factory DataModel.fromJson(Map<String, dynamic> json)=> DataModel(
    productos: List<Product>.from(json["productos"].map((x)=> Product.fromJson(x)))
  );

  Map<String, dynamic> toJson() => {
    "productos": List<dynamic>.from(productos.map((x)=> x.toJson()))
  };
}

class Product {
    final String id;
    final String name;
    final String valorU;
    final String insumo;
    final String stockMin;
    final String stockMax;
    final String descripcion;
    final int v;

    Product({
        required this.id,
        required this.name,
        required this.valorU,
        required this.insumo,
        required this.stockMin,
        required this.stockMax,
        required this.descripcion,
        required this.v,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        name: json["name"],
        valorU: json["valorU"],
        insumo: json["insumo"],
        stockMin: json["stockMin"],
        stockMax: json["stockMax"],
        descripcion: json["descripcion"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "valorU": valorU,
        "insumo": insumo,
        "stockMin": stockMin,
        "stockMax": stockMax,
        "descripcion": descripcion,
        "__v": v,
    };
}
