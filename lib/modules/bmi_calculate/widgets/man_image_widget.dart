import 'package:flutter/material.dart';

class ManImageWidget extends StatelessWidget {
  final int height;
  const ManImageWidget({super.key,required this.height});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/man.jpg"),
      height: height / 2,
    );
  }
}
