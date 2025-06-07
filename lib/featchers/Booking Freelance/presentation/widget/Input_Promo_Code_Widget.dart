// ignore_for_file: deprecated_member_use, file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:flutter/material.dart';

class InputPromoCodeWidget extends StatefulWidget {
  const InputPromoCodeWidget({super.key});

  @override
  State<InputPromoCodeWidget> createState() => _InputPromoCodeWidgetState();
}

class _InputPromoCodeWidgetState extends State<InputPromoCodeWidget> {
  final _formKey = GlobalKey<FormState>();
  final _promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _promoCodeController,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return "Please enter a promo code.";
          }
          if (value.length < 4) {
            return "Promo code is too short.";
          }
          return null;
        },
        decoration: TextFormFieldStyle.formOne(
          "Promo code...",
          FontsStyle.white14w700.copyWith(
            color: Color(0xffA0A0A0),
            fontStyle: FontStyle.italic,
          ),
        ).copyWith(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: TextButtonWhiteWidget(
              width: 90,
              hight: 25,
              label: "Apply",
              borderColor: const Color(0xffE3E3E3),
              fontsStyle:
                  FontsStyle.whit16w700.copyWith(color: ColorsFaces.colorThird),
              buttonColor: const Color(0xff3E0C0C),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  log("Apply: ${_promoCodeController.text}");
                }
              },
            ),
          ),
        ),
        cursorWidth: 1.5,
      ),
    );
  }
}
