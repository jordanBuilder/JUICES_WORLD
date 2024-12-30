import 'package:flutter/material.dart';

class JuiceCard extends StatelessWidget {
  String? imagePath;

  JuiceCard({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('$imagePath'), fit: BoxFit.cover)),
    );
  }
}
