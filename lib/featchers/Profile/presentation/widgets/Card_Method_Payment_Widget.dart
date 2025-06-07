// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:app2/core/style/Fonts_style.dart';

class CardMethodPaymentWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isSelected;

  const CardMethodPaymentWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? Colors.grey.withOpacity(0.2) : Colors.white,
            border: Border.all(
              color: isSelected ? Color(0xFFA64D79) : Color(0xFFE3E3E3),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(image, height: 40, width: 40),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: FontsStyle.whit16w700
                            .copyWith(color: Colors.black)),
                    Text(subtitle,
                        style: FontsStyle.white13w400
                            .copyWith(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        right: 10,
        top: 20,
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.black.withOpacity(0.2),
              highlightColor: Colors.black.withOpacity(0.1),
              onTap: onTap,
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Row(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.edit_square,
                      color: Color.fromARGB(197, 67, 21, 42),
                      size: 17,
                    ),
                    Text(
                      "Edit",
                      style: FontsStyle.white14w500.copyWith(
                        color: Color.fromARGB(197, 67, 21, 42),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    ]);
  }
}
