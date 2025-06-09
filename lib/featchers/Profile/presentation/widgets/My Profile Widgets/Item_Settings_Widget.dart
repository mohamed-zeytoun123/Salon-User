// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/pages/my_profile_change_password_page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Notification_Switch_Widget.dart';
import 'package:flutter/material.dart';

class ItemSettingsWidget extends StatelessWidget {
  const ItemSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffFFFFFF),
        elevation: 5,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Settings",
                      style: FontsStyle.white24w400Meditative.copyWith(
                        color: Color(0xff43152A),
                      )),
                  CustomBorderButtonWidget(
                      text: "Change Password",
                      onTap: () {
                        log("Change Password");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyProfileChangePasswordPage()));
                      }),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE3E3E3),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "App Notifications",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000),
                          ),
                        ),
                        NotificationSwitchWidget(
                          onToggle: (isEnabled) {
                            if (isEnabled) {
                              log("Notifications Enabled");
                            } else {
                              log("Notifications Disabled");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  CustomBorderButtonWidget(
                      text: "Log Out",
                      showIcon: false,
                      colorBorder: Color(0xffC01515),
                      colorText: Color(0xffC01515),
                      onTap: () {
                        log("Log Out");
                      }),
                  CustomBorderButtonWidget(
                      text: "Delete My Account",
                      showIcon: false,
                      colorBorder: Color(0xffC01515),
                      colorText: Color(0xffC01515),
                      onTap: () {
                        log("Delete My Account");
                      }),
                ])));
  }
}
