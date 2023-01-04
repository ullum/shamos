import 'package:flutter/material.dart';
import 'package:shamos/models/product_model.dart';
import 'package:shamos/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  // memebuat function get product nya
  Future<void> getProducts() async {
    //
    try {
      List<ProductModel> product = await ProductService().getProducts();
      _products = products;
    } catch (e) {
      print(e);
    }
  }
  //
}
