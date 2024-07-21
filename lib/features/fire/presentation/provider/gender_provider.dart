import 'package:flutter/material.dart';

class Gender_Provider extends ChangeNotifier {
  String? Mygender;
  Chnagegender(String Newgender) {
    Mygender = Newgender;
    notifyListeners();
  }
}
