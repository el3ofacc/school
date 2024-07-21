import 'package:flutter/material.dart';

class Visible extends ChangeNotifier {
  bool isvisible = false;
  changevisible() {
    isvisible = !isvisible;
    notifyListeners();
  }
}
