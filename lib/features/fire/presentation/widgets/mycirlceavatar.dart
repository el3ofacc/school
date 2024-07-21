
import 'package:flutter/material.dart';
import 'package:revise_fire/core/utils/images.dart';

class mycircleavatar extends StatelessWidget {
  const mycircleavatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(radius: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(image: AssetImage(
          Myimage.schoolimage),
        fit: BoxFit.cover,
        height: 200,
        width: 200,),
      ),),
    );
  }
}
