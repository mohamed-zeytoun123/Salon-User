// ignore_for_file: file_names
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const GradientText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return ColorsFaces.colorMain.createShader(bounds);
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
