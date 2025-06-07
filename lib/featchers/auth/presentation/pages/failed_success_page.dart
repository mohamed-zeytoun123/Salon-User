// ignore_for_file: must_be_immutable

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/featchers/auth/presentation/pages/Create_new_account_page.dart';
import 'package:app2/featchers/auth/presentation/pages/Phone_Number_Page.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_passowrd_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class FailedSuccessPage extends StatelessWidget {
  FailedSuccessPage({super.key});
  PhoneController phoneNumberController = PhoneController();
  TextEditingController passwordController = TextEditingController();
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
                    height: 540,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Login",
                              style: FontsStyle.w0x45w400Meditative,
                            ),
                          ),
                          InputPhoneNumberWidget(
                              controller: phoneNumberController),
                          SizedBox(height: 10),
                          InputPassowrdWidget(
                            controller: passwordController,
                            width: 350,
                            hintText: 'password',
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: Text(
                                "Forget Password ?",
                                style: FontsStyle
                                    .black18w400SF_Pro_Display_Heavy
                                    .copyWith(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffA64D79),
                                        decorationThickness: 1.5,
                                        color: Color(0xffA64D79),
                                        fontSize: 14),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PhoneNumberPage()));
                              },
                            ),
                          ),
                          SizedBox(height: 60),
                          Align(
                            alignment: Alignment.center,
                            child: TextButtonWhiteWidget(
                                width: 244,
                                hight: 44,
                                label:
                                    "Confirmation failed. Please check the number",
                                onPressed: () {},
                                borderColor: Color(0xffF1F1F1),
                                fontsStyle: FontsStyle
                                    .black17w500SF_Pro_Display_Heavy
                                    .copyWith(fontSize: 9.9)),
                          ),
                          SizedBox(height: 50),
                          Text(
                            "Don't Have An Account ?",
                            style: FontsStyle.black20w400SF_Pro_Display_Heavy
                                .copyWith(
                                    fontSize: 18, color: Color(0xff515151)),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextButtonWhiteWidget(
                                width: 280,
                                hight: 46,
                                label: "Sign up",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CreateNewAccountPage()));
                                },
                                borderColor: Color(0xff3F1428),
                                fontsStyle:
                                    FontsStyle.black17w500SF_Pro_Display_Heavy,
                              ),
                            ),
                          ),
                        ],
                      )),
                    ))),
          ],
        ),
      ),
    );
  }
}
