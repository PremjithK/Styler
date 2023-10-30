import 'package:flutter/material.dart';

class AppBarUnderlineWIdget extends StatelessWidget {
  const AppBarUnderlineWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      color: Colors.orange,
    );
  }
}

SizedBox wSpace(double width) {
  return SizedBox(width: width);
}

SizedBox hSpace(double height) {
  return SizedBox(height: height);
}
