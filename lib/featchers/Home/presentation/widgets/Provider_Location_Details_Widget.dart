// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ProviderLocationDetailsWidget extends StatelessWidget {
  const ProviderLocationDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(
                  "Country",
                  style:
                      FontsStyle.white16w700.copyWith(color: Color(0xff121212)),
                ),
                subtitle: Text(
                  "Country Name",
                  style:
                      FontsStyle.white14w400.copyWith(color: Color(0xff515151)),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  "City",
                  style:
                      FontsStyle.white16w700.copyWith(color: Color(0xff121212)),
                ),
                subtitle: Text(
                  "City Name",
                  style:
                      FontsStyle.white14w400.copyWith(color: Color(0xff515151)),
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: Text(
            "Area & Street",
            style: FontsStyle.white16w700.copyWith(color: Color(0xff121212)),
          ),
          subtitle: Text(
            "Area & Street Name - 23 Location",
            style: FontsStyle.white14w400.copyWith(color: Color(0xff515151)),
          ),
        ),
      ],
    );
  }
}
