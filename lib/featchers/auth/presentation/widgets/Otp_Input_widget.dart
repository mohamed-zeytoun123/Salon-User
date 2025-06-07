// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class OTPInputWidget extends StatefulWidget {
  const OTPInputWidget({super.key});

  @override
  _OTPInputWidgetState createState() => _OTPInputWidgetState();
}

class _OTPInputWidgetState extends State<OTPInputWidget> {
  List<bool> isFilled = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              width: 56,
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: isFilled[index] ? Color(0xffF1F1F1) : Colors.white,
                border: Border.all(color: Color(0xff979797), width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                style: FontsStyle.bfx16w200SF_Pro_Display_Heavy,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    isFilled[index] = value.isNotEmpty;
                  });

                  if (value.isNotEmpty) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
