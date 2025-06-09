// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/style/text_form_field_style.dart';
import 'package:flutter/material.dart';

class InputCountryWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  final double? width;

  const InputCountryWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width = double.infinity,
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
                  .copyWith(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the country name.';
                } else if (value.length < 3) {
                  return 'The country name must be at least 3 characters long.';
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
