import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
          child: Center(child: Text("dsaffasaas",
          style: Theme.of(context).textTheme.headlineLarge,))),
    );
  }
}
