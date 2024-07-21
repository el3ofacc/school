import 'package:flutter/material.dart';
import 'package:revise_fire/features/fire/presentation/pages/homepage.dart';
import 'package:revise_fire/features/fire/presentation/pages/schoolair_year.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mybutton.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mycirlceavatar.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mydropdownform.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mydropdownsubject.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Subject_screen extends StatelessWidget {
  const Subject_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mycircleavatar(),
          SizedBox(
            height: 50,
          ),
          Text(
            "your subject",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Mydropdownsubject(),
          SizedBox(height: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mybutton(
                  buttontext: "prev",
                  myfun: () {
                    Transport.navigatereplacement(context, Schoolair_year());
                  }),
              Mybutton(
                  buttontext: "Next",
                  myfun: () {
                    Transport.navigatereplacement(context, Homepage());
                  })
            ],
          )
        ],
      ),
    );
  }
}
