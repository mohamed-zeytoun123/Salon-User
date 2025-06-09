// ignore_for_file: file_names

import 'package:app2/featchers/auth/presentation/pages/change_password_page.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/o_t_p_Instructions_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/o_t_p_Input_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/count_down_timer_widget.dart';
import 'package:app2/core/colors/background_color_pages.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class OtpNumberPage extends StatelessWidget {
  const OtpNumberPage({super.key});

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
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 44),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OtpInstructionsWidget(),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ChangePasswordPage()),
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
