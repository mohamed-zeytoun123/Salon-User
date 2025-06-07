// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';

Widget buildTextFormFieldWidget({
  required BuildContext context,
  required TextEditingController controller,
  required String hint,
  required IconData icon,
  required String? Function(String?) validator,
}) {
  return SizedBox(
    height: 50,
    width: 350,
    child: TextFormField(
      controller: controller,
      decoration: TextFormFieldStyle.formOne(hint).copyWith(
        prefixIcon: Icon(icon),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
      validator: validator,
      onFieldSubmitted: (value) {},
    ),
  );
}
