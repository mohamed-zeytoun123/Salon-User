// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

enum Option { home, salon }

class SelectableButtonWidget extends StatefulWidget {
  final ValueChanged<Option> onOptionSelected;
  final bool isEnabled;

  const SelectableButtonWidget({
    super.key,
    required this.onOptionSelected,
    this.isEnabled = false,
  });

  @override
  _SelectableButtonWidgetState createState() => _SelectableButtonWidgetState();
}

class _SelectableButtonWidgetState extends State<SelectableButtonWidget> {
  Option _selectedOption = Option.home;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButtonWhiteWidget(
          width: 185,
          hight: 46,
          label: "Within the house",
          borderColor: const Color(0xffE3E3E3),
          fontsStyle: FontsStyle.white14w400.copyWith(
            color: _selectedOption == Option.home
                ? Colors.white
                : const Color(0xff666666),
          ),
          buttonColor: _selectedOption == Option.home
              ? const Color(0xff3E0C0C)
              : Colors.white,
          onPressed: () {
            if (!widget.isEnabled) return;
            if (_selectedOption != Option.home) {
              setState(() {
                _selectedOption = Option.home;
              });
              widget.onOptionSelected(_selectedOption);
              log("Selected Option: $_selectedOption");
            }
          },
        ),
        TextButtonWhiteWidget(
          width: 185,
          hight: 46,
          label: "Within the salon",
          borderColor: const Color(0xffE3E3E3),
          fontsStyle: FontsStyle.white14w400.copyWith(
            color: _selectedOption == Option.salon
                ? Colors.white
                : const Color(0xff666666),
          ),
          buttonColor: _selectedOption == Option.salon
              ? const Color(0xff3E0C0C)
              : Colors.white,
          onPressed: () {
            if (!widget.isEnabled) return;
            if (_selectedOption != Option.salon) {
              setState(() {
                _selectedOption = Option.salon;
              });
              widget.onOptionSelected(_selectedOption);
              log("Selected Option: $_selectedOption");
            }
          },
        ),
      ],
    );
  }
}
