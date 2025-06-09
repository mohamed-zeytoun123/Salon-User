// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class PriceDetailsWidget extends StatelessWidget {
  final double priceItem;
  final double priceFees;
  final double priceTotal;
  const PriceDetailsWidget(
      {super.key,
      required this.priceItem,
      required this.priceFees,
      required this.priceTotal});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Items",
              style: FontsStyle.white16w600HeadingRegular
                  .copyWith(color: Color(0xff1E1918)),
            ),
            Text(
              "\$$priceItem",
              style: FontsStyle.whit16w700.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fees",
              style: FontsStyle.white16w600HeadingRegular
                  .copyWith(color: Color(0xff1E1918)),
            ),
            Text(
              "\$$priceFees",
              style: FontsStyle.whit16w700.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Divider(color: Color.fromARGB(44, 102, 102, 102)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: FontsStyle.white16w800HeadingRegular.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "\$$priceTotal",
              style: FontsStyle.whit16w700.copyWith(color: Color(0xff1E1918)),
            ),
          ],
        )
      ],
    );
  }
}
