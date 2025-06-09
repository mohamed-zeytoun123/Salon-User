// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/style/text_form_field_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputIntegerValueWidget extends StatelessWidget {
  const InputIntegerValueWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 55,
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              decoration: TextFormFieldStyle.formOne(
                "Enter Value",
                FontsStyle.white13w400.copyWith(color: const Color(0xffC8C8C8)),
              ).copyWith(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE3E3E3)),
                      borderRadius: BorderRadius.circular(12))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Value cannot be empty!';
                }
                final intValue = int.tryParse(value);
                if (intValue == null) {
                  return 'Please enter a valid Value!';
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
