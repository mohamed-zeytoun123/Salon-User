// ignore_for_file: file_names
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Otp_Input_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/count_down_Timer_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class MyProfileOtpNumberPage extends StatelessWidget {
  const MyProfileOtpNumberPage({super.key});

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
                height: 615,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 44),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OTP Number",
                          style: FontsStyle.w0x45w400Meditative,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Enter the Code Sent to ",
                                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy,
                              ),
                              TextSpan(
                                text: "******94",
                                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy
                                    .copyWith(
                                  color: Color(0xffA64D79),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xffA64D79),
                                  decorationThickness: 1,
                                ),
                              ),
                              TextSpan(
                                text: " to Continue Log in Registration",
                                style: FontsStyle.b0x16w700SF_Pro_Display_Heavy,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            spacing: 17,
                            children: [
                              OTPInputWidget(),
                              TextButtonColorMainWidget(
                                  width: 280,
                                  hight: 46,
                                  label: "Confirm",
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyProfilePage()),
                                      (Route<dynamic> route) => false,
                                    );
                                  }),
                              CountdownTimerWidget(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn’t receive a Code? ",
                                    style: FontsStyle
                                        .b0x16w700SF_Pro_Display_Heavy,
                                  ),
                                  InkWell(
                                    child: Text(
                                      "Resend Code",
                                      style: FontsStyle
                                          .b0x16w700SF_Pro_Display_Heavy
                                          .copyWith(
                                        color: Color(0xffA64D79),
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffA64D79),
                                        decorationThickness: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
