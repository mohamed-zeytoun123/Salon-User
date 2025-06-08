// ignore_for_file: constant_identifier_names, file_names

import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Booking_Date_Time_model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class BookingDateTimeWidget extends StatelessWidget {
  final BookingDateTime bookingDateTime;

  const BookingDateTimeWidget({
    super.key,
    required this.bookingDateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(
              Icons.calendar_today,
              size: 15,
              color: Color(0xff000000),
            ),
            Text(
              "From : ${bookingDateTime.date.day} - ${bookingDateTime.date.month} - ${bookingDateTime.date.year}",
              style: FontsStyle.whit10w700.copyWith(color: Color(0xff515151)),
            ),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(
              Icons.access_time,
              size: 15,
              color: Color(0xff000000),
            ),
            Text(
              "From : ${bookingDateTime.hour.toString().padLeft(2, '0')} : ${bookingDateTime.minute.toString().padLeft(2, '0')} ${bookingDateTime.period.name.toString()}",
              style: FontsStyle.whit10w700.copyWith(
                color: Color(0xff515151),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
