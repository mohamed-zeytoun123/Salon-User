// ignore_for_file: must_be_immutable, file_names

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class AreaContentWidget extends StatelessWidget {
  AreaContentWidget({super.key});
  TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Location ( by Area )",
          style: FontsStyle.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Location by Area",
          option1: 'Area 1',
          option2: "Area 2",
          valueOption1: "Area 1",
          valueOption2: "Area 2",
          controller: areaController,
        ),
      ],
    );
  }
}
