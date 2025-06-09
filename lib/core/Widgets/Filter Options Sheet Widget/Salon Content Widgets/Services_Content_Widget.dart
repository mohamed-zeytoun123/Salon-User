// ignore_for_file: file_names, must_be_immutable

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class ServicesContentWidget extends StatelessWidget {
  ServicesContentWidget({super.key});
  TextEditingController servicesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services",
          style: FontsStyle.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Services",
          option1: 'Services',
          option2: "Product",
          valueOption1: "Services",
          valueOption2: "Product",
          controller: servicesController,
        ),
      ],
    );
  }
}
