import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/utils/mytheme.dart';
import 'package:revise_fire/features/fire/presentation/pages/gender.dart';
import 'package:revise_fire/features/fire/presentation/pages/homepage.dart';
 
import 'package:revise_fire/features/fire/presentation/pages/signupscreen.dart';
import 'package:revise_fire/features/fire/presentation/provider/gender_provider.dart';
import 'package:revise_fire/features/fire/presentation/provider/myswich.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolsubjectprovider.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolyearprovider.dart';
 
import 'package:revise_fire/features/fire/presentation/provider/visible.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>School_subject_provider()),
      ChangeNotifierProvider(create: (context)=>Schoolyearprovider()),
            ChangeNotifierProvider(create: (context)=>Gender_Provider()),
      ChangeNotifierProvider(
        create: (context) => Myswitch(),),
        ChangeNotifierProvider(create: (context)=>Visible())
    ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
          title: 'my school',
          theme:  Mytheme().apptheme,
          home:FirebaseAuth.instance.currentUser==null?   Signupscreen():Gender(),
        ),);
  }
}



 