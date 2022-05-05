import 'dart:convert';

import 'package:hive/hive.dart';
part 'Currency_model.g.dart';

@HiveType(typeId: 1)
class CurrencyModel {
  CurrencyModel({
    this.title,
    this.code,
    this.cbPrice,
    this.nbuBuyPrice,
    this.nbuCellPrice,
    this.date,
  });

  @HiveField(0)
  String? title;
  @HiveField(1)
  String? code;
  @HiveField(2)
  String? cbPrice;
  @HiveField(3)
  String? nbuBuyPrice;
  @HiveField(4)
  String? nbuCellPrice;
  @HiveField(5)
  String? date;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "code": code,
        "cb_price": cbPrice,
        "nbu_buy_price": nbuBuyPrice,
        "nbu_cell_price": nbuCellPrice,
        "date": date,
      };
}
