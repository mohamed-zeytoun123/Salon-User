// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/pages/f_a_q_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/privacy_poicy_page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/contact_us_sheet_widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ItemMoreWidget extends StatelessWidget {
  const ItemMoreWidget({
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
                  Text("More",
                      style: FontsStyle.white24w400Meditative.copyWith(
                        color: Color(0xff43152A),
                      )).tr(),
                  CustomBorderButtonWidget(
                      text: "Privacy Policey",
                      onTap: () {
                        log("Privacy Policey");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPoicyPage()));
                      }),
                  CustomBorderButtonWidget(
                      text: "Rate Our app",
                      onTap: () {
                        log("Rate Our app");
                      }),
                  CustomBorderButtonWidget(
                    text: "Contact Us",
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(36)),
                        ),
                        builder: (context) => ContactUsSheetWidget(),
                      );
                    },
                  ),
                  CustomBorderButtonWidget(
                      text: "FAQ",
                      onTap: () {
                        log("FAQ");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FAQPage()));
                      }),
                ])));
  }
}
