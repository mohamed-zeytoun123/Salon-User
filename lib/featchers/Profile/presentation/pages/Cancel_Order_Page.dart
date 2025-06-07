// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Cancellation_Reasons_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Dotted_Border_Text_Field.dart';
import 'package:flutter/material.dart';

class CancelOrderPage extends StatelessWidget {
  CancelOrderPage({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(135, 252, 252, 252),
      body: BottomSheetWidget(
          height: 740,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reason for Cancellation",
                    style: FontsStyle.white26ww700
                        .copyWith(color: Color(0xff565656)),
                  ),
                  Text(
                    "Please specify the reason for canceling the order",
                    style: FontsStyle.whit16w400
                        .copyWith(color: Color(0xff515151)),
                  ),
                  CancellationReasons(
                    onSelected: (value) {
                      log(value.name);
                    },
                  ),
                  SizedBox(height: 20),
                  DottedBorderTextField(
                    controller: controller,
                    hintText: 'Add reason for cancellation',
                    width: 352,
                    height: 200,
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: TextButtonColorMainWidget(
                      width: 280,
                      hight: 46,
                      label: "Send",
                      onPressed: () {
                        log("Sending");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
