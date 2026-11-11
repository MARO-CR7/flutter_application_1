import 'package:flutter/material.dart';

class Toggleprovider extends ChangeNotifier {
  bool istoggle = false;

  void toggle(bool value) {
    istoggle = value;
    notifyListeners();
  }
}
