// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class DisplayServicesAndPriceNameWidget extends StatelessWidget {
  const DisplayServicesAndPriceNameWidget({
    super.key,
    required this.name,
    required this.price,
  });
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: FontsStyle.whit20ww700.copyWith(color: Color(0xff383838)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30),
          child: Text(
            "$price\$",
            style: FontsStyle.whit20w400.copyWith(
                fontWeight: FontWeight.w300,
                color: Color(0xff383838),
                fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
