import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/auth/authorization.dart';
import 'package:revise_fire/core/utils/mytheme.dart';
import 'package:revise_fire/features/fire/presentation/pages/homepage.dart';
import 'package:revise_fire/features/fire/presentation/pages/signupscreen.dart';
import 'package:revise_fire/features/fire/presentation/provider/visible.dart';
import 'package:revise_fire/features/fire/presentation/widgets/dialoge.dart';
import 'package:revise_fire/features/fire/presentation/widgets/formfield.dart';
import 'package:revise_fire/features/fire/presentation/widgets/formfieldicon.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mybutton.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Sigininscreen extends StatefulWidget {
  const Sigininscreen({super.key});

  @override
  State<Sigininscreen> createState() => _SigininscreenState();
}

class _SigininscreenState extends State<Sigininscreen> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                    height: 20,
                  ),
                  Formfield(
                      mycontroller: emailcontroller,
                      hint: "someone@gmail.com",
                      secure: false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Transport.navigatereplacement(
                                  context, Signupscreen());
                            },
                            child: Text("don't have account",
                            style:Theme.of(context).textTheme.headlineSmall)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Formfield(
                      myicon: Formfieldicon(),
                      mycontroller: passwordcontroller,
                      hint: '************',
                      secure: provider.isvisible),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              if (passwordcontroller != null ||
                                  passwordcontroller != '') {
                                Authorization.Sendlinktoresetpassword(
                                    context, emailcontroller.text);
                              }
                            },
                            child: Text("forget password",
                            style: Theme.of(context).textTheme.headlineSmall,)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Mybutton(
                      buttontext: "sign in",
                      myfun: () {
                        if (formstate.currentState!.validate()) {
                          Authorization.Signinwithemailandpassword(
                              context,
                              emailcontroller.text,
                              passwordcontroller.text,
                              Homepage());
                        }
                      }),  SizedBox(
                    height: 20,
                  ),
                  Mybutton(
                      buttontext: "sign in with GOOGLE",
                      myfun: () async{
                        try {
                          UserCredential? userCredential =
                            await  Authorization.Sign_in_with_google(context);
                            if(userCredential!=null){
                          Transport.navigatereplacement(context, Homepage());}
                        } on Exception catch (e) {
                          Mydialoge.showmessage(context, e.toString());
                        }
                      })
                ],
              )),
        );
      },
    );
  }
}


 