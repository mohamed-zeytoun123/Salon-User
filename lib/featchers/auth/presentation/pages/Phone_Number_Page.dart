// ignore_for_file: must_be_immutable, file_names

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/featchers/auth/presentation/pages/OTP_Number_page.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNumberPage extends StatelessWidget {
  PhoneNumberPage({super.key});
  PhoneController phoneController = PhoneController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 112),
              child: Text(
                "Logo",
                style: FontsStyle.white45w700,
              ),
            ),
            Expanded(
                child: BottomSheetWidget(
                    height: 611,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: FontsStyle.c45w400Meditative,
                            ),
                            Text(
                              "Enter your number to send OTP Number",
                              style: FontsStyle.black17w500SF_Pro_Display_Heavy,
                            ),
                            SizedBox(height: 30),
                            Align(
                              alignment: Alignment.center,
                              child: InputPhoneNumberWidget(
                                  controller: phoneController),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 130),
                                child: TextButtonColorMainWidget(
                                  width: 280,
                                  hight: 46,
                                  label: "Next",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OtpNumberPage()));
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
