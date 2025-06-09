// ignore: camel_case_types
// ignore_for_file: file_names, must_be_immutable

import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'dart:developer';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ContactUsSheetWidget extends StatelessWidget {
  ContactUsSheetWidget({
    super.key,
  });
  TextEditingController textNotificationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 420,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsFaces.colorThird,
          borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                Text(
                  "Contact Us",
                  style: FontsStyle.white32w400Meditative.copyWith(
                    color: Color(0xff383838),
                  ),
                ),
                Text(
                  "Message",
                  style: FontsStyle.whid18w500.copyWith(
                    color: Color(0xff303030),
                  ),
                ),
                InputDottedTextfieldWidget(
                  hintText: "Tell us your message here",
                  controller: textNotificationcontroller,
                  height: 119,
                ),
                SizedBox(height: 70),
                Center(
                  child: TextButtonColorMainWidget(
                    width: 280,
                    hight: 46,
                    label: "Send",
                    onPressed: () {
                      log("Sending");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
