import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/auth/authorization.dart';
import 'package:revise_fire/features/fire/presentation/pages/sigininscreen.dart';
import 'package:revise_fire/features/fire/presentation/provider/visible.dart';
import 'package:revise_fire/features/fire/presentation/widgets/formfield.dart';
import 'package:revise_fire/features/fire/presentation/widgets/formfieldicon.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mybutton.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Signupscreen extends StatefulWidget {
  Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController name = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<Visible>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Form(
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Formfield(mycontroller: name,
                 hint: "your name", secure: false),
                SizedBox(
                  height: 30,
                ),
                Formfield(
                  secure: false,
                  hint: 'example@gmail.com',
                  myicon: null,
                  mycontroller: emailcontroller,
                ),
                SizedBox(
                  height: 30,
                ),
                Formfield(
                    mycontroller: passwordcontroller,
                    hint: "*****",
                    secure: provider.isvisible,
                    myicon: Formfieldicon()),
                SizedBox(
                  height: 30,
                ),
                Mybutton(
                    buttontext: 'sign up',
                    myfun: () {
                      if (formstate.currentState!.validate()) {
                        Authorization.Createuserwithemailandpassword(
                            context: context,
                            email: emailcontroller.text,
                            password: passwordcontroller.text);
                      
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                Mybutton(
                    buttontext: "Have an acount",
                    myfun: () {
                      Transport.navigatereplacement(context, Sigininscreen());
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}


 