// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/style/text_form_field_style.dart';
import 'package:app2/featchers/Profile/presentation/manager/Type_Gender_Enum.dart';
import 'package:flutter/material.dart';

class InputGenderWidget extends StatelessWidget {
  final TypeGenderEnum? selectedGender;
  final Function(TypeGenderEnum?) onChanged;
  final double? width;

  const InputGenderWidget({
    super.key,
    required this.selectedGender,
    required this.onChanged,
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
            child: DropdownButtonFormField<TypeGenderEnum>(
              value: selectedGender,
              decoration: TextFormFieldStyle.formOne("Select Gender",
                      FontsStyle.white14w400.copyWith(color: Color(0XFF50555C)))
                  .copyWith(),
              validator: (value) {
                if (value == null) {
                  return "Please select gender!";
                }
                return null;
              },
              onChanged: onChanged,
              items: [
                DropdownMenuItem<TypeGenderEnum>(
                  value: TypeGenderEnum.Female,
                  child: Text('Female'),
                ),
                DropdownMenuItem<TypeGenderEnum>(
                  value: TypeGenderEnum.Male,
                  child: Text('Male'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
