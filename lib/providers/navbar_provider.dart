import 'package:flutter/material.dart';

class CustomNavBarProvider with ChangeNotifier {
  int _navBarIndex = 0;

  get navBarIndex => _navBarIndex;

  set setNavBarIndex(int index) {
    _navBarIndex = index;
    notifyListeners();
  }
}
