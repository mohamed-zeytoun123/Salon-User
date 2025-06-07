// ignore_for_file: deprecated_member_use, file_names
import 'dart:developer';

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/Select_Location_Bottom_Sheet_Widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class LocationChangeTileWidget extends StatefulWidget {
  const LocationChangeTileWidget({
    super.key,
  });

  @override
  State<LocationChangeTileWidget> createState() =>
      _LocationChangeTileWidgetState();
}

class _LocationChangeTileWidgetState extends State<LocationChangeTileWidget> {
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
    return Column(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff1E1918),
                ),
                Text(
                  'Home',
                  style:
                      FontsStyle.white16w700.copyWith(color: Color(0xff000000)),
                )
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: Colors.black.withOpacity(0.2),
                highlightColor: Colors.black.withOpacity(0.1),
                child: DottedBorder(
                  color: const Color(0xffE3E3E3),
                  strokeWidth: 1,
                  dashPattern: const [5, 7],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  child: Ink(
                    width: 114,
                    height: 27,
                    decoration: BoxDecoration(
                      color: ColorsFaces.colorThird,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Change",
                        style: FontsStyle.white14w700
                            .copyWith(color: Color(0xff4A172E)),
                      ),
                    ),
                  ),
                ),
                onTap: () => showBottomSheet(context),
              ),
            ),
          ],
        ),
        Text(
          label,
          maxLines: 1,
          style: FontsStyle.white14w400.copyWith(
            color: Color(0xff515151),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
