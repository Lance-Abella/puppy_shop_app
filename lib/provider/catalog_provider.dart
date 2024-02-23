import 'package:flutter/material.dart';
import 'package:puppy_shop_app/shared_data/object.dart';

class CatalogProvider extends ChangeNotifier {
  List<Puppy> _results = pets;

  List<Puppy> get results => _results;

  void updateResults(String keyword) {
    _results = pets;

    if(keyword.isNotEmpty){
      _results = _filteredPuppy(keyword);
    }
    notifyListeners();
  }

  List<Puppy> _filteredPuppy(String keyword) {
    return pets.where((pet) {
      final lowerCaseKeyword = keyword.toLowerCase();
      return pet.name.toLowerCase().contains(lowerCaseKeyword);
    }).toList();
  }
}