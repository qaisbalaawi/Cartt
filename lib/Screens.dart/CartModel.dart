import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  List<int> _count = [];
  List<double> _price = [];

  List<int> get count => _count;
  List<double> get price => _price;

  void addToCart(int value, double price) {
    _count.add(value);
    _price.add(price);

    notifyListeners();
  }

  double calculateTotalPrice() {
    double totalprice = 0.0;
    for (int i = 0; i < _count.length; i++) {
      totalprice += _count[i] * _price[i];
    }
    return totalprice;
  }
}
