// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/select_location_bottom_sheet_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String label = "Location Name";

  void showBottomSheet(BuildContext context) async {
    String? selectedItem = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SelectableBottomSheetWidget();
      },
    );

    if (selectedItem != null) {
      log("Selected Item: $selectedItem");
      setState(() {
        label = selectedItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showBottomSheet(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Location",
            style: FontsStyle.whit12w700.copyWith(color: Color(0xff252525)),
          ).tr(),
          Row(
            children: [
              Expanded(
                child: Text(
                  label.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      FontsStyle.white10w400.copyWith(color: Color(0xff252525)),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
