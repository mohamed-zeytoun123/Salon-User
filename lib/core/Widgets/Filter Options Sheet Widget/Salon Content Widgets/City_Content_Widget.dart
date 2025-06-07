// ignore_for_file: must_be_immutable, file_names

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class CityContentWidget extends StatelessWidget {
  CityContentWidget({super.key});
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Location ( by City )",
          style: FontsStyle.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Location by City",
          option1: 'City 1',
          option2: "City 2",
          valueOption1: "City 1",
          valueOption2: "City 2",
          controller: cityController,
        ),
      ],
    );
  }
}
