import 'package:flutter/material.dart';

class StudiKasusProvider extends ChangeNotifier {
 // switch state
  bool _isActive = false; 

  bool get isActive => _isActive;

  void setIsActive(bool newValue) {
    _isActive = newValue;
    notifyListeners();
  }
 // dropdown state
  String? _selectedItem;

  String? get selectedItem => _selectedItem;
  
  void setSelectedItem(String newValue) {
    _selectedItem = newValue;
    notifyListeners();
  }
}