// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/assets/icons_url.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/widgets/Dialog_Gift_For_Friend_Widget.dart';
import 'package:flutter/material.dart';

class GiftFriendWidget extends StatelessWidget {
  const GiftFriendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 53,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEBEBEB)),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 17,
                  height: 20,
                  child: Image.asset(
                    IconsUrl.giftfriend,
                    fit: BoxFit.cover,
                  )),
              Text(
                "Gift for a friend",
                style:
                    FontsStyle.black16w700.copyWith(color: Color(0xff000000)),
              )
            ],
          ),
          TextButtonWhiteWidget(
            width: 90,
            hight: 40,
            label: "Apply",
            borderColor: const Color(0xffE3E3E3),
            fontsStyle:
                FontsStyle.whit16w700.copyWith(color: ColorsFaces.colorThird),
            buttonColor: const Color(0xff3E0C0C),
            onPressed: () {
              log("Apply");
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: ColorsFaces.colorThird,
                  child: DialogGiftForFriendWidget(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
