// ignore_for_file: file_names
import 'package:app2/core/style/text_form_field_style.dart';
import 'package:flutter/material.dart';

class CustomDropdownFieldWidget extends StatelessWidget {
  final String hint;
  final String option1;
  final String option2;
  final String valueOption1;
  final String valueOption2;
  final TextEditingController controller;

  const CustomDropdownFieldWidget({
    super.key,
    required this.hint,
    required this.option1,
    required this.option2,
    required this.valueOption1,
    required this.valueOption2,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: controller.text.isNotEmpty ? controller.text : null,
      decoration: TextFormFieldStyle.formOne(hint),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Form cannot be empty!";
        }
        return null;
      },
      onChanged: (value) {
        controller.text = value!;
      },
      items: [
        DropdownMenuItem(value: valueOption1, child: Text(option1)),
        DropdownMenuItem(value: valueOption2, child: Text(option2)),
      ],
    );
  }
}
