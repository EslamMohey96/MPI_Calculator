import 'package:flutter/material.dart';

class BMIImageWidget extends StatelessWidget {
  final int width;
  const BMIImageWidget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/bmi.png"),
      fit: BoxFit.cover,
      width: width *0.47,
    );
  }
}
