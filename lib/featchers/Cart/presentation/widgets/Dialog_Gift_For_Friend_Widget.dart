// ignore_for_file: must_be_immutable, file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:app2/core/assets/image_url.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Cart/presentation/widgets/button_send_show_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class DialogGiftForFriendWidget extends StatelessWidget {
  DialogGiftForFriendWidget({
    super.key,
  });

  PhoneController controllerNumber = PhoneController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 399,
      width: 369,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(
              width: 81,
              height: 81,
              child: Image(
                image: AssetImage(ImageUrl.giftfriendbig),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Gift For a friend",
              style: FontsStyle.whit24w700.copyWith(color: Color(0xff2A2A2A)),
            ),
            InputPhoneNumberWidget(controller: controllerNumber),
            ButtonSendShowDialogWidget(),
            TextButtonWhiteWidget(
                width: 297,
                hight: 56,
                buttonColor: ColorsFaces.colorThird,
                borderColor: Color(0xff4A172E),
                fontsStyle:
                    FontsStyle.black16w700.copyWith(color: Color(0xff4A172E)),
                label: "Cancel",
                onPressed: () {
                  log("Cancel");
                }),
          ],
        ),
      ),
    );
  }
}
