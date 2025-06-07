// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/About_Button_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Loyalty_Points_Button_Widget.dart';
import 'package:flutter/material.dart';

class ProviderInfoHaderWidget extends StatelessWidget {
  const ProviderInfoHaderWidget({super.key, required this.isFreelance});
  final bool isFreelance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 0,
      right: 0,
      bottom: 0,
      child: Stack(
        children: [
          BottomSheetWidget(
            height: (MediaQuery.of(context).size.height) - 120,
            child: ColoredBox(
                color: ColorsFaces.colorThird,
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Provider Name",
                            style: FontsStyle.whit24w700
                                .copyWith(color: Color(0xff383838)),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                log("share");
                              },
                              borderRadius: BorderRadius.circular(100),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.share_outlined,
                                  color: isFreelance
                                      ? Color.fromARGB(255, 82, 24, 47)
                                      : ColorsFaces.colorSecondary,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Skin Care Specialist",
                        style: FontsStyle.black15w400
                            .copyWith(color: Color(0xff666666)),
                      ),
                      Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AboutButtonWidget(
                            isFreelance: isFreelance,
                          ),
                          LoyaltyPointsButtonWidget(
                            isFreelance: isFreelance,
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
