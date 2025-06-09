// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class StaticPriceDeliveryWidget extends StatelessWidget {
  const StaticPriceDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery price",
                    style: FontsStyle.whit16w700.copyWith(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "\$3",
                    style: FontsStyle.whit16w700.copyWith(
                      color: const Color(0xff434343),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tax",
                      style: FontsStyle.white14w600.copyWith(
                        color: Color(0xff434343),
                        fontWeight: FontWeight.w800,
                      )),
                  Text("\$1.3",
                      style: FontsStyle.white14w700.copyWith(
                        color: Color(0xff434343),
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ],
          ),
        ),
        const Divider(color: Color.fromARGB(44, 102, 102, 102)),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Total",
                style: FontsStyle.whit16w700.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff1E1918),
                )),
            Text("\$39.9",
                style: FontsStyle.whit16w700.copyWith(
                  color: Color(0xff434343),
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                )),
          ]),
        ),
      ],
    );
  }
}
