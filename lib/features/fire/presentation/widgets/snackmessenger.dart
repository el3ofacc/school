import 'package:flutter/material.dart';

class Snackmessenger {
  static messagefun(BuildContext context,String snacktext) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(snacktext)));
  }
}
