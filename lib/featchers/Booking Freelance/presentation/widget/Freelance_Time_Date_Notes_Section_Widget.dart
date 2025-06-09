// ignore_for_file: must_be_immutable, file_names

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/Toggle_Option_Selector_Widget.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FreelanceTimeDateNotesSectionWidget extends StatelessWidget {
  FreelanceTimeDateNotesSectionWidget({super.key});
  TextEditingController textNotificationcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('dd-MM-yyyy', context.locale.toString())
        .format(DateTime.now());
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time & Date",
          style:
              FontsStyle.c24w400Meditative.copyWith(color: Color(0xff383838)),
        ),
        Text(
          "Choose the  date",
          style: FontsStyle.whit16w700.copyWith(color: Color(0xff303148)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffD9D9D9)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                today,
                style: FontsStyle.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              Icon(
                Icons.date_range_outlined,
                size: 30,
                color: Color(0xff000000),
              ),
            ],
          ),
        ),
        Text(
          "Choose the Time",
          style: FontsStyle.whit16w700.copyWith(color: Color(0xff000000)),
        ),
        ToggleOptionSelectorWidget(
          options: DummyData.optionsDUMMY,
          isSelectable: false,
        ),
        Text(
          "Add your Nots",
          style: FontsStyle.whit20w400.copyWith(color: Color(0xff383838)),
        ),
        InputDottedTextfieldWidget(
          hintText: "add your notifications",
          controller: textNotificationcontroller,
          height: 107,
        ),
      ],
    );
  }
}
