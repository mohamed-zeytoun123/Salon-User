// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final int orderId;
  final BookingDate date;
  final double price;

  const OrderDetails({
    super.key,
    required this.orderId,
    required this.date,
    required this.price,
  });

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Id #$orderId",
                  style:
                      FontsStyle.whit16w700.copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "${date.day} - ${date.month} -${date.year}",
                  style:
                      FontsStyle.white13w400.copyWith(color: Color(0xff818181)),
                ),
              ],
            ),
            Text(
              "\$$price",
              style: FontsStyle.whit20w200.copyWith(
                  fontStyle: FontStyle.italic,
                  color: ColorsFaces.colorSecondary),
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
          child: SizedBox(width: double.infinity, height: 0),
        ),
      ],
    );
  }
}
