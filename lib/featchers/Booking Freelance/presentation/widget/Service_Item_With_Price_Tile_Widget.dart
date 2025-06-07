// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ServiceItemWithPriceTileWidget extends StatelessWidget {
  const ServiceItemWithPriceTileWidget({
    super.key,
    required this.name,
    required this.quantity,
    required this.priceItem,
  });

  final String name;
  final int quantity;
  final double priceItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    name,
                    style: FontsStyle.white14w600.copyWith(
                      color: const Color(0xff434343),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "x $quantity",
                    style: FontsStyle.white14w600.copyWith(
                      color: const Color(0xff434343),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "\$$priceItem",
                style: FontsStyle.white14w200.copyWith(
                  color: const Color(0xff434343),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        const Divider(color: Color.fromARGB(44, 102, 102, 102)),
      ],
    );
  }
}
