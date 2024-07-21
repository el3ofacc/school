import 'package:flutter/material.dart';

class School_subject_provider extends ChangeNotifier {
  String? mysubject;
  Changesubject(String newsubject) {
    mysubject = newsubject;
    notifyListeners();
  }
}
