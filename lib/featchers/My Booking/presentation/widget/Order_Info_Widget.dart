// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app2/core/style/fonts_style.dart';

class OrderInfoWidget extends StatelessWidget {
  final int orderId;
  final String date;

  const OrderInfoWidget({super.key, required this.orderId, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Order ID #$orderId",
          style: FontsStyle.white28w600.copyWith(
            color: Color(0xff000000),
            height: 1.5,
          ),
        ),
        Text(
          date,
          style: FontsStyle.white19w800.copyWith(
            color: Color(0xff6C6C6C),
            height: 1.5,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
