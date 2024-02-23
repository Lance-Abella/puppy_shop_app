import 'package:flutter/material.dart';
import 'package:puppy_shop_app/shared_data/object.dart';

class CartProvider extends ChangeNotifier {
  final List<Puppy> _items = [];

  List<Puppy> get items => _items;

  void add(Puppy item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Puppy item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll(Puppy item) {
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _items.fold(0, (previousValue, items) => previousValue + items.price);
  }
}