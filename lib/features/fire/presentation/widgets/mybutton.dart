import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
    Mybutton({super.key,required this.buttontext,required this.myfun});
  final String buttontext;
  Function() myfun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: myfun, child: Text(buttontext,
      style: Theme.of(context).textTheme.headlineMedium,)),
    );
  }
}
