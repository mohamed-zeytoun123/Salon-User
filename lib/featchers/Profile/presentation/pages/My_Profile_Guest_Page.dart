// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Account_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_More_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Item_Settings_Widget.dart';
import 'package:flutter/material.dart';

class MyProfileGuestPage extends StatelessWidget {
  const MyProfileGuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "My Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(
                    "User Nmae",
                    style: FontsStyle.white24w400Meditative
                        .copyWith(color: Color(0xff383838)),
                  ),
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  TextButtonColorMainWidget(
                      width: double.infinity,
                      hight: 40,
                      label: "Register",
                      onPressed: () {
                        log("Register");
                      }),
                  TextButtonWhiteWidget(
                      width: double.infinity,
                      hight: 40,
                      label: "Sign In",
                      buttonColor: Color(0xffFFFFFF),
                      fontsStyle: FontsStyle.white16w700
                          .copyWith(color: Color(0xff1A1A1A)),
                      borderColor: const Color.fromARGB(98, 158, 158, 158),
                      onPressed: () {
                        log("Sign In");
                      }),
                ],
              ),
              ItemAccountWidget(),
              ItemSettingsWidget(),
              ItemMoreWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
