// ignore_for_file: file_names, deprecated_member_use

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class TextButtonColorMainWidget extends StatelessWidget {
  final double width;
  final double hight;
  final double? sizeIcon;
  final String label;
  final VoidCallback onPressed;
  final IconData? iconData;
  final Color? background;
  final Color? colorLabel;

  const TextButtonColorMainWidget({
    super.key,
    required this.width,
    required this.hight,
    required this.label,
    required this.onPressed,
    this.iconData,
    this.sizeIcon,
    this.background,
    this.colorLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.blue.withOpacity(0.2),
        highlightColor: Colors.blue.withOpacity(0.1),
        onTap: onPressed,
        child: Ink(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            color: background,
            gradient: background == null ? ColorsFaces.colorMain : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: FontsStyle.white16w700.copyWith(color: colorLabel),
                ),
                if (iconData != null)
                  Icon(
                    iconData,
                    color: Color(0xffFFFFFF),
                    size: sizeIcon,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButtonColorMainWidget copyWith({
    double? width,
    double? hight,
    String? label,
    VoidCallback? onPressed,
  }) {
    return TextButtonColorMainWidget(
      width: width ?? this.width,
      hight: hight ?? this.hight,
      label: label ?? this.label,
      onPressed: onPressed ?? this.onPressed,
    );
  }
}
