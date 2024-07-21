import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/utils/mycolor.dart';
import 'package:revise_fire/features/fire/presentation/pages/Subjectscreen.dart';
import 'package:revise_fire/features/fire/presentation/pages/gender.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolyearprovider.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mybutton.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mycirlceavatar.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mydropdownform.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Schoolair_year extends StatelessWidget {
  const Schoolair_year({super.key});

  @override
  Widget build(BuildContext context) {
       
     
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mycircleavatar(),
              SizedBox(
                height: 150,
              ),
              Center(
                child: Text(
                  'your secondary year',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Mydropdownform(),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Mybutton(
                      buttontext: "prev",
                      myfun: () {
                        Transport.navigatereplacement(context, Gender());
                      }),
                  Mybutton(
                      buttontext: "next",
                      myfun: () {
                        Transport.navigatereplacement(
                            context, Subject_screen());
                      })
                ],
              )
            ],
          ),
        );
       
     
  }
}
