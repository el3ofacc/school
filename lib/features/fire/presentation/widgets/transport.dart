import 'package:flutter/material.dart';

class Transport {
  static navigatereplacement(BuildContext context, var page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }
}
