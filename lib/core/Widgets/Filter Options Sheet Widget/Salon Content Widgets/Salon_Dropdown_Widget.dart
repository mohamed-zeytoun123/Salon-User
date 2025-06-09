// ignore_for_file: file_names

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SalonDropdownWidget extends StatelessWidget {
  SalonDropdownWidget({super.key});

  TextEditingController salonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Salon",
          style: FontsStyle.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Salon",
          option1: 'Salon',
          option2: "In Home",
          valueOption1: "Salon",
          valueOption2: "In Home",
          controller: salonController,
        ),
      ],
    );
  }
}
