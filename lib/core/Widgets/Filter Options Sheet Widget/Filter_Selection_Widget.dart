// ignore_for_file: file_names
import 'dart:developer';

import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/Service_Option_Selector_Widget.dart';
import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/filter_options_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class FilterSelectionWidget extends StatelessWidget {
  const FilterSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 730,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: ColorsFaces.colorThird,
        borderRadius: BorderRadius.circular(36),
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filteration",
                  style: FontsStyle.white24w400Meditative
                      .copyWith(color: ColorsFaces.colorSecondary),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Color(0xff898A8D),
                  ),
                ),
              ],
            ),
            Text(
              "Gender",
              style: FontsStyle.white14w600NunitoSans
                  .copyWith(color: Color(0xff000000)),
            ),
            ServiceOptionSelectorWidget(
              onSelectionChanged: (S) {
                log(S);
              },
            ),
            FilterOptionsWidget()
          ],
        ),
      ),
    );
  }
}
