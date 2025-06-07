// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Integer_Value_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:flutter/material.dart';

class DialogWantToPayWidget extends StatefulWidget {
  const DialogWantToPayWidget({super.key});

  @override
  State<DialogWantToPayWidget> createState() => _DialogWantToPayWidgetState();
}

class _DialogWantToPayWidgetState extends State<DialogWantToPayWidget> {
  bool isdisplaywidget = true;
  late DateTime selectedDate;
  late String monthName;

  TextEditingController controller = TextEditingController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (isdisplaywidget) {
      return Container(
        width: 369,
        height: 259,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: ColorsFaces.colorThird,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          spacing: 25,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Want To Pay By",
              style: FontsStyle.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            Column(
              spacing: 10,
              children: [
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Electronic payment",
                  borderColor: const Color(0xffE3E3E3),
                  fontsStyle: FontsStyle.white16w700
                      .copyWith(color: ColorsFaces.colorThird),
                  buttonColor: const Color(0xff3E0C0C),
                  onPressed: () {
                    log("Electronic payment");
                  },
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Wallet ",
                  borderColor: const Color(0xff3E0C0C),
                  fontsStyle:
                      FontsStyle.white16w700.copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: ColorsFaces.colorThird,
                  onPressed: () {
                    log("Wallet");

                    setState(() {
                      isdisplaywidget = false;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        width: 369,
        height: 377,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: ColorsFaces.colorThird,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          spacing: 25,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Payment By Wallet",
              style: FontsStyle.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All the amount",
                  style: FontsStyle.whit16w400.copyWith(
                    color: Color(0xff515151),
                  ),
                  textAlign: TextAlign.start,
                ),
                TextButtonWhiteWidget(
                  width: 297,
                  hight: 56,
                  label: "Payment all the amount",
                  borderColor: const Color(0xff3E0C0C),
                  fontsStyle:
                      FontsStyle.white13w400.copyWith(color: Color(0xff3E0C0C)),
                  buttonColor: Color(0xffF6F6F6),
                  onPressed: () {
                    log("Payment all the amount");
                  },
                ),
                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xffEBEBEB),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "or",
                      style: FontsStyle.whit16w400
                          .copyWith(color: Color(0xff515151)),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xffEBEBEB),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                Text(
                  "A certain amount",
                  style: FontsStyle.whit16w400.copyWith(
                    color: Color(0xff515151),
                  ),
                  textAlign: TextAlign.start,
                ),
                InputIntegerValueWidget(
                  controller: controller,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButtonWhiteWidget(
                      width: 140,
                      hight: 45,
                      label: "Cancel",
                      borderColor: const Color.fromARGB(132, 227, 227, 227),
                      fontsStyle: FontsStyle.white16w700
                          .copyWith(color: Color(0xff1A1A1A)),
                      buttonColor: ColorsFaces.colorThird,
                      onPressed: () {
                        log("Cancel");
                        Navigator.pop(context);
                      },
                    ),
                    TextButtonWhiteWidget(
                      width: 140,
                      hight: 45,
                      label: "Payment",
                      borderColor: const Color(0xffE3E3E3),
                      fontsStyle: FontsStyle.white16w700
                          .copyWith(color: ColorsFaces.colorThird),
                      buttonColor: const Color(0xff3E0C0C),
                      onPressed: () {
                        log("Payment");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WalletPage()));
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }
  }
}
