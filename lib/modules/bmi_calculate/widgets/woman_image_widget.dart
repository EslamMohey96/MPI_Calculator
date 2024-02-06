import 'package:flutter/material.dart';

class WomanImageWidget extends StatelessWidget {
  final int height;
  const WomanImageWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/woman.jpg"),
      height: height / 2,
    );
  }
}
