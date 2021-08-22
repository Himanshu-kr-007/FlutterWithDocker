import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpeg",
      fit: BoxFit.fitHeight,
      colorBlendMode: BlendMode.darken,
      color: Colors.black.withOpacity(0.1),
    );
  }
}
