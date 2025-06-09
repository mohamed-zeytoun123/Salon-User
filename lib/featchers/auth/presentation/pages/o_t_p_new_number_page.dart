// ignore_for_file: file_names

import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/featchers/auth/presentation/widgets/O_t_p_Input_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/count_down_timer_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class OtpNewNumberPage extends StatelessWidget {
  const OtpNewNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Column(
          spacing: 6,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52, bottom: 18, left: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24,
                    )),
              ),
            ),
            Expanded(
                child: BottomSheetWidget(
                    height: 827,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 10,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Verify Phone Number",
                              style: FontsStyle.black32w400
                                  .copyWith(color: Color(0xff383838)),
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Enter the Code Sent to ",
                                    style: FontsStyle
                                        .b0x16w700SF_Pro_Display_Heavy,
                                  ),
                                  TextSpan(
                                    text: "******94",
                                    style: FontsStyle
                                        .b0x16w700SF_Pro_Display_Heavy
                                        .copyWith(
                                      color: Color(0xffA64D79),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xffA64D79),
                                      decorationThickness: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " to Continue Log in Registration",
                                    style: FontsStyle
                                        .b0x16w700SF_Pro_Display_Heavy,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                spacing: 10,
                                children: [
                                  OTPInputWidget(),
                                  TextButtonColorMainWidget(
                                      width: 280,
                                      hight: 46,
                                      label: "Confirm",
                                      onPressed: () {
                                        // context.go(RoutesPath.homeContent);
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeContentPage()),
                                          (route) => false,
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
                                            decoration:
                                                TextDecoration.underline,
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
                    )))
          ],
        ),
      ),
    );
  }
}
