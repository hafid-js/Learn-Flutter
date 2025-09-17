import 'package:flutter/material.dart';

class Product {
  @required String imageURL;
  @required String judul;
  @required int harga;
  @required String deskripsi;

  Product(this.imageURL, this.judul, this.harga, this.deskripsi);
}
