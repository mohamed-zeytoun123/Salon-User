// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class TapDescriptionWidget extends StatelessWidget {
  final String description;

  const TapDescriptionWidget({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          description,
          style: FontsStyle.whit16w400.copyWith(color: Color(0xff515151)),
        ),
      ),
    );
  }
}
