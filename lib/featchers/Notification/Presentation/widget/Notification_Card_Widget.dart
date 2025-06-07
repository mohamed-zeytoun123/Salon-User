// ignore_for_file: file_names

import 'package:app2/core/model/Booking_Date_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.messageText,
    required this.date,
  });
  final String imageUrl;
  final String userName;
  final String messageText;
  final BookingDate date;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 105,
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xffA9ADB9),
              )),
          padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 7),
          child: Column(
            spacing: 5,
            children: [
              Expanded(
                child: Text(
                  messageText,
                  style:
                      FontsStyle.white14w400.copyWith(color: Color(0xff3C3C3C)),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "${date.day} - ${date.month} - ${date.year}",
                  style: FontsStyle.whit10w400.copyWith(
                    color: Color(0xff3C3C3C),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 27,
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(imageUrl),
              ),
              Text(
                userName,
                style: FontsStyle.black16w700.copyWith(
                  color: Color(0xff303030),
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
