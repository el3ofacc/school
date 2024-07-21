import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revise_fire/features/fire/presentation/provider/visible.dart';

class Formfieldicon extends StatelessWidget {
  const Formfieldicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Visible>(
      builder: (context, provider, child) {
        return InkWell(
            onTap: () {
              provider.changevisible();
            },
            child: Icon(provider.isvisible?Icons.visibility_off: Icons.visibility));
      },
    );
  }
}
