// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:flutter/material.dart';

class InputEmailWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;

  final double? width;

  const InputEmailWidget({
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
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              controller: controller,
              decoration: TextFormFieldStyle.formOne(hintText,
                      FontsStyle.white14w400.copyWith(color: Color(0XFF50555C)))
                  .copyWith(
                prefixIcon: icon != null ? Icon(icon) : null,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email cannot be empty!';
                } else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                    .hasMatch(value)) {
                  return 'Please enter a valid email address!';
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
