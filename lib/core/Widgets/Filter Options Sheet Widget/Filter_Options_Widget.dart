// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/Area_Content_Widget.dart';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/City_Content_Widget.dart';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/Rating_Content_Widget.dart';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/Salon_Dropdown_Widget.dart';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Salon%20Content%20Widgets/Services_Content_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:flutter/material.dart';

class FilterOptionsWidget extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FilterOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SalonDropdownWidget(),
          ServicesContentWidget(),
          RatingContentWidget(),
          CityContentWidget(),
          AreaContentWidget(),
          SizedBox(height: 20),
          Center(
            child: TextButtonColorMainWidget(
              width: 343,
              hight: 56,
              label: "Apply filter",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log("Filters Applied!");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
