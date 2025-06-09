// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/featchers/Notification/Presentation/pages/Notification_Page.dart';
import 'package:flutter/material.dart';

class NotificationButtonWidget extends StatelessWidget {
  const NotificationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          log("Location pressed");
          // if (context.locale.languageCode == 'en') {
          //   context.setLocale(Locale('ar'));
          // } else {
          //   context.setLocale(Locale('en'));
          // }
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationPage()));
        },
        icon: Icon(
          Icons.notifications_none,
          size: 30,
        ));
  }
}
