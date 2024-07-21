import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/utils/images.dart';
import 'package:revise_fire/features/fire/presentation/pages/schoolair_year.dart';
import 'package:revise_fire/features/fire/presentation/provider/gender_provider.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mybutton.dart';
import 'package:revise_fire/features/fire/presentation/widgets/mycirlceavatar.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Gender extends StatefulWidget {
  Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Gender_Provider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mycircleavatar(),
              SizedBox(height: 50,),
              Center(
                child: Text(
                  'choose your gender',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Center(
                child: RadioListTile(
                  title: Text(
                    'male',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "male",
                  groupValue: provider.Mygender,
                  onChanged: (value) {
                    provider.Chnagegender(value.toString());
                  },
                ),
              ),
              Center(
                child: RadioListTile(
                  title: Text(
                    'female',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "female",
                  groupValue: provider.Mygender,
                  onChanged: (value) {
                    provider.Chnagegender(value.toString());
                  },
                ),
              ),
              Center(
                child: RadioListTile(
                  title: Text(
                    'special',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "special",
                  groupValue: provider.Mygender,
                  onChanged: (value) {
                    provider.Chnagegender(value.toString());
                  },
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Mybutton(
                      buttontext: "next",
                      myfun: () {
                        Transport.navigatereplacement(
                            context, Schoolair_year());
                      })
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
