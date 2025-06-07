// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCVVWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double? width;

  const InputCVVWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 375,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65,
            child: TextFormField(
              controller: controller,
              textInputAction: TextInputAction.next,
              decoration: TextFormFieldStyle.formOne(hintText,
                  FontsStyle.white14w400.copyWith(color: Color(0XFF50555C))),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(5),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the CVV';
                } else if (!RegExp(r'^\d{3,4}$').hasMatch(value)) {
                  return 'Invalid CVV! Please enter 3 or 4 digits';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
