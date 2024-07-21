import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/core/utils/mycolor.dart';
import 'package:revise_fire/features/fire/presentation/provider/schoolyearprovider.dart';

class Mydropdownform extends StatelessWidget {
  const Mydropdownform({super.key,  });
 

  @override
  Widget build(BuildContext context) {
    return Consumer<Schoolyearprovider>(
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
                "choose your secondary year",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              items: [
                DropdownMenuItem(
                  child: Text(
                    "first",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value:"first" ,
                ),
                DropdownMenuItem(
                  child: Text(
                    "second",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "second",
                ),
                DropdownMenuItem(
                  child: Text(
                    "third",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  value: "third",
                ),
                 
              ],
              onChanged: (value) {
                provider.Changeschoolyear(value.toString());
              }),
        );
      },
    )
    ;
  }
}
