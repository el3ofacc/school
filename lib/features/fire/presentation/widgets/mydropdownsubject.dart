import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/utils/mycolor.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolsubjectprovider.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolyearprovider.dart';

class  Mydropdownsubject extends StatelessWidget {
  const  Mydropdownsubject({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<School_subject_provider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonFormField(
              dropdownColor: Colors.red,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Mycolor().Primarycolor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              hint: Text(
                "choose your subject",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              items: [
                DropdownMenuItem(
                  child: Text(
                    "Math",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value:"math" ,
                ),
                DropdownMenuItem(
                  child: Text(
                    "Arabic",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "arabic",
                ),
                DropdownMenuItem(
                  child: Text(
                    "English",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "english",
                ),
                  DropdownMenuItem(
                  child: Text(
                    "Physics",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "physics",
                ),  DropdownMenuItem(
                  child: Text(
                    "Chemestry",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "chemstry",
                ),  DropdownMenuItem(
                  child: Text(
                    "Biology",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "biology",
                ),
                  DropdownMenuItem(
                  child: Text(
                    "French",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "french",
                ),
                 
              ],
              onChanged: (value) {
                provider.Changesubject(value.toString());
              }),

        );
      },
    );
  }
}