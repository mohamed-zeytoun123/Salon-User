// ignore_for_file: file_names
import 'package:app2/core/style/Fonts_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double width;

  const DottedBorderTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [5, 3],
      color: const Color.fromARGB(75, 158, 158, 158),
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
          controller: controller,
          maxLines: 5,
          decoration: InputDecoration(
            hintStyle:
                FontsStyle.white13w400.copyWith(color: Color(0xffA3A3A3)),
            hintText: hintText,
            contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
// width: 352,
//         height: 200,
//
//             hintText: 'Add reason for cancellation',
