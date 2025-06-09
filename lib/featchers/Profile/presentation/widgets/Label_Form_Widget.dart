// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class LabelFormWidget extends StatelessWidget {
  const LabelFormWidget({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: FontsStyle.white14w700.copyWith(color: Colors.black),
    );
  }
}
