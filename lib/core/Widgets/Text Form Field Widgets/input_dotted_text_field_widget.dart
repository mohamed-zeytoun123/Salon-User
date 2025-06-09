// ignore_for_file: file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/style/fonts_style.dart';

class InputDottedTextfieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double height;

  const InputDottedTextfieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: DottedBorder(
        color: const Color.fromARGB(93, 142, 139, 139),
        strokeWidth: 1,
        dashPattern: [2, 2],
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        child: TextFormField(
          controller: controller,
          maxLines: 20,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: FontsStyle.whit16w400.copyWith(
              color: Color.fromARGB(176, 163, 163, 163),
            ),
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
