// ignore_for_file: must_be_immutable, file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_cVV_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_day_and_month_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_name_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class BottomSheetAddPaymentMethodWidget extends StatelessWidget {
  BottomSheetAddPaymentMethodWidget({
    super.key,
  });
  TextEditingController controllerName = TextEditingController();
  PhoneController controllerNumber = PhoneController();
  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerCVV = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      height: 500,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Payment Method",
                style: FontsStyle.white32w400Meditative
                    .copyWith(color: Color(0xff000000)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    "Card Holder Name",
                    style: FontsStyle.white14w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                  InputNameWidget(
                      controller: controllerName, hintText: "Ex : holder name"),
                  Text(
                    "Card Number",
                    style: FontsStyle.white14w700
                        .copyWith(color: Color(0xff000000)),
                  ),
                  InputPhoneNumberWidget(controller: controllerNumber),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expire Date",
                            style: FontsStyle.white14w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          InputDayAndMonthWidget(
                            controller: controllerDate,
                            hintText: 'MM / YY',
                            width: 145,
                          ),
                        ],
                      ),
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV / CVS",
                            style: FontsStyle.white14w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                          InputCVVWidget(
                            controller: controllerCVV,
                            hintText: "-----",
                            width: 145,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  TextButtonWhiteWidget(
                    width: 150,
                    hight: 56,
                    onPressed: () {
                      log("Cancel");
                      Navigator.pop(context);
                    },
                    borderColor: Color(0xffE3E3E3),
                    label: "Cancel",
                    buttonColor: ColorsFaces.colorThird,
                    fontsStyle: FontsStyle.white14w700
                        .copyWith(color: Color(0xff1A1A1A)),
                  ),
                  TextButtonColorMainWidget(
                    width: 150,
                    hight: 56,
                    label: "Confirm",
                    onPressed: () {
                      Navigator.pop(context);
                      log("Confirm");
                      showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                backgroundColor: ColorsFaces.colorThird,
                                child: SizedBox(
                                  height: 190,
                                  width: 369,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          spacing: 3,
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Color.fromARGB(
                                                  255, 24, 176, 100),
                                            ),
                                            Text(
                                              "The payment was",
                                              style: FontsStyle.whit20ww700
                                                  .copyWith(
                                                      color: Color(0xff2A2A2A)),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "completed successfully",
                                          style: FontsStyle.whit20ww700
                                              .copyWith(
                                                  color: Color(0xff2A2A2A)),
                                        ),
                                        SizedBox(height: 30),
                                        TextButtonColorMainWidget(
                                            width: 297,
                                            hight: 56,
                                            label: "Done",
                                            onPressed: () {
                                              Navigator.pop(context);
                                              log("Done");
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
