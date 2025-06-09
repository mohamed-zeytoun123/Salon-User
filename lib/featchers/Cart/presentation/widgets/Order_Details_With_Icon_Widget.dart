// ignore_for_file: file_names

import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OrderDetailsWithIconWidget extends StatelessWidget {
  final int orderId;
  final BookingDate date;
  final double price;
  final bool isUp;

  const OrderDetailsWithIconWidget({
    super.key,
    required this.orderId,
    required this.date,
    required this.price,
    required this.isUp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Id #$orderId",
                  style: FontsStyle.whit16w700
                      .copyWith(color: const Color(0xff000000)),
                ),
                Text(
                  "${date.day} - ${date.month} - ${date.year}",
                  style: FontsStyle.white13w400
                      .copyWith(color: const Color(0xff818181)),
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Text(
                  "\$$price",
                  style: FontsStyle.whit20w200.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Color(0xff43152A),
                  ),
                ),
                Transform.rotate(
                  angle: isUp == true ? -0.7 : 2.2,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff3E0C0C),
                  ),
                ),
              ],
            ),
          ],
        ),
        DottedBorder(
          dashPattern: [5, 3],
          color: const Color.fromARGB(75, 158, 158, 158),
          strokeWidth: 1,
          customPath: (size) => Path()
            ..moveTo(0, 0)
            ..lineTo(size.width, 0),
          child: const SizedBox(width: double.infinity, height: 0),
        ),
      ],
    );
  }
}
