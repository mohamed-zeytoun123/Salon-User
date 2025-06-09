// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class AppSnackBar {
  static void show({
    required BuildContext context,
    required String message,
    Color backgroundColor = Colors.red,
    Duration duration = const Duration(seconds: 3),
    IconData? icon,
  }) {
    final snackBar = SnackBar(
      content: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
        child: Material(
          color: Colors.transparent,
          child: Row(
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    weight: 300,
                  ),
                ),
              Flexible(
                  child: Text(message,
                      style: FontsStyle.whit20ww700.copyWith(
                        color: ColorsFaces.colorThird,
                        fontStyle: FontStyle.italic,
                      ))),
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      elevation: 6,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
