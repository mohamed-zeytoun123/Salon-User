// ignore_for_file: file_names
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:flutter/material.dart';

class PasswordActionWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const PasswordActionWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        spacing: 50,
        children: [
          TextButtonWhiteWidget(
            width: 244,
            hight: 44,
            label: "Confirmation failed. Please check the number",
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => FailedSuccessPage()),
              // );
            },
            borderColor: Color(0xffF1F1F1),
            fontsStyle: FontsStyle.black17w500SF_Pro_Display_Heavy
                .copyWith(fontSize: 9.9),
          ),
          TextButtonColorMainWidget(
            width: 301,
            hight: 50,
            label: "Create New Password",
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomeContentPage()),
                (route) => false,
              );
              // if (formKey.currentState!.validate()) {
              //   log("done");
              // }
            },
          ),
        ],
      ),
    );
  }
}
