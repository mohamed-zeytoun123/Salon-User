// ignore_for_file: file_names

import 'package:app2/core/Widgets/Filter%20Options%20Sheet%20Widget/filter_selection_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Button_Search_widget.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class RowSearchFilterWidget extends StatelessWidget {
  const RowSearchFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: ButtonSearchWidget()),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return FilterSelectionWidget();
                  });
            },
            child: Row(
              spacing: 7,
              children: [
                Icon(
                  Icons.tune,
                  color: ColorsFaces.colorSecondary,
                ),
                Text(
                  "Filter",
                  style: FontsStyle.whit20w400
                      .copyWith(color: ColorsFaces.colorSecondary),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
