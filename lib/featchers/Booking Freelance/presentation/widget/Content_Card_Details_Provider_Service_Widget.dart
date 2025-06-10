// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ContentCardDetailsProviderServiceWidget extends StatelessWidget {
  const ContentCardDetailsProviderServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Provider Name",
              style: FontsStyle.whit16w700.copyWith(color: Color(0xff000000)),
            ),
            Text(
              "Skin Care Specialist",
              style: FontsStyle.white13w400.copyWith(color: Color(0xff818181)),
            ),
          ],
        ),
        DottedBorder(
          color: const Color(0xffE3E3E3),
          dashPattern: const [3, 4],
          borderType: BorderType.Rect,
          padding: EdgeInsets.zero,
          child: SizedBox(
            width: 246,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.circle,
                  size: 5,
                  color: Color(0xff434343),
                ),
                Text(
                  "Bridal Makeup",
                  style: FontsStyle.white13w400.copyWith(
                    color: Color(0xff434343),
                  ),
                )
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.circle,
                  size: 5,
                  color: Color(0xff434343),
                ),
                Text(
                  "Hair Cut and Styling",
                  style: FontsStyle.white13w400.copyWith(
                    color: Color(0xff434343),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
