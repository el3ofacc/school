 

import 'package:flutter/material.dart';

class Schoolyearprovider extends ChangeNotifier {
  String? myschoolyear;
  Changeschoolyear(String newyear) {
    myschoolyear = newyear;
    notifyListeners();
  }
}
