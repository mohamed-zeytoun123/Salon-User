// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:flutter/material.dart';

class InputNameWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;

  final double? width;

  const InputNameWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
    this.icon,
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
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              decoration: TextFormFieldStyle.formOne(hintText,
                      FontsStyle.white14w400.copyWith(color: Color(0XFF50555C)))
                  .copyWith(
                prefixIcon: icon != null ? Icon(icon) : null,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name cannot be empty!';
                } else if (value.length < 3) {
                  return 'Name must be at least 3 characters!';
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
