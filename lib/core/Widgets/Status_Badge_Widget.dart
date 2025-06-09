// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/Widgets/gradient_text_widget.dart';

class StatusBadgeWidget extends StatelessWidget {
  final String text;
  final double? width;
  final Color? textcolor;
  const StatusBadgeWidget({
    super.key,
    required this.text,
    this.width = 74,
    this.textcolor = ColorsFaces.colorSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffD9D9D9),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 27,
        width: width,
        child: Center(
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                size: 5,
                color: textcolor,
              ),
              if (textcolor == ColorsFaces.colorSecondary)
                GradientText(
                  text: text,
                  style: FontsStyle.white13w700,
                )
              else
                Text(
                  text,
                  style: FontsStyle.white13w700.copyWith(color: textcolor),
                )
            ],
          ),
        ),
      ),
    );
  }
}
