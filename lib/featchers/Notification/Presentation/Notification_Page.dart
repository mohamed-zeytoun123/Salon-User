// ignore_for_file: file_names

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Notification/Presentation/widget/Notification_Card_Widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Notification"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "New",
                    style: FontsStyle.c24w400Meditative.copyWith(
                      color: Color(0xff717171),
                      fontSize: 18,
                    ),
                  ),
                ),
                ...List.generate(DummyData.notificationListDUMMY.length, (index) {
                  return NotificationCardWidget(
                      imageUrl: DummyData.notificationListDUMMY[index].imageUrl,
                      userName: DummyData.notificationListDUMMY[index].userName,
                      messageText:
                          DummyData.notificationListDUMMY[index].messageText,
                      date: DummyData.notificationListDUMMY[index].date);
                }),
              ],
            ),
            Divider(
              color: Color.fromARGB(132, 183, 216, 237),
              thickness: 2,
            ),
            ...List.generate(DummyData.notificationListDUMMY.length, (index) {
              return NotificationCardWidget(
                  imageUrl: DummyData.notificationListDUMMY[index].imageUrl,
                  userName: DummyData.notificationListDUMMY[index].userName,
                  messageText: DummyData.notificationListDUMMY[index].messageText,
                  date: DummyData.notificationListDUMMY[index].date);
            }),
          ],
        ),
      ),
    );
  }
}
