// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

Widget labelWidget(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Text(
      text,
      style: FontsStyle.bff16w700SF_Pro_Display_Heavy
          .copyWith(color: Color(0xff000000)),
    ),
  );
}
