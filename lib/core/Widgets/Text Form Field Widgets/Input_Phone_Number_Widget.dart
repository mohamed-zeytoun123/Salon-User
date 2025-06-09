// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/style/text_form_field_style.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class InputPhoneNumberWidget extends StatelessWidget {
  final PhoneController controller;

  const InputPhoneNumberWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PhoneFormField(
        controller: controller,
        decoration: TextFormFieldStyle.formOne(
          "323 4323 1",
          FontsStyle.white14w400.copyWith(color: Color(0XFF50555C)),
        ).copyWith(
          prefixIcon: Icon(Icons.call, color: Colors.grey),
        ),
        enabled: true,
        validator: (PhoneNumber? value) {
          if (value == null || !value.isValid()) {
            return "Please enter a valid phone number !";
          }
          return null;
        },
      ),
    );
  }
}
