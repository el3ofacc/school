import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:revise_fire/core/utils/mycolor.dart';

class Formfield extends StatefulWidget {
  Formfield({
    super.key,
    this.myicon,
    required this.mycontroller,
    required this.hint,
    required this.secure,
  });
  final Widget? myicon;

  bool secure;
  String hint;
  TextEditingController mycontroller;
  @override
  State<Formfield> createState() => _FormfieldState();
}

class _FormfieldState extends State<Formfield> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(
          color: Mycolor().Textcolor,fontSize: 25
        ),
        validator: (value) {
          if (value == null || value == "") {
            return ("can't be null");
          }
         
        },
        textAlign: TextAlign.center,
        obscureText: widget.secure,
        controller: widget.mycontroller,
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.headlineMedium,
            suffixIcon: widget.myicon,
            filled: true,
            fillColor: Mycolor().Textfromcolor,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
