// ignore_for_file: file_names

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class CustomToggleStateBuyWidget extends StatefulWidget {
  const CustomToggleStateBuyWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomToggleStateBuyWidgetState createState() =>
      _CustomToggleStateBuyWidgetState();
}

class _CustomToggleStateBuyWidgetState
    extends State<CustomToggleStateBuyWidget> {
  bool isSelected = false; //! الحالة الافتراضية
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = true; //! تبديل الحالة عند الضغط
        });
      },
      child: Container(
        width: 170.5,
        height: 32,
        decoration: BoxDecoration(
          color: isSelected ? ColorsFaces.colorSecondary : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xFFE3E3E3)),
        ),
        child: isSelected
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Color(0xffD9D9D9),
                    ),
                    padding: EdgeInsets.all(4),
                  ),
                  Text(
                    "$number",
                    style: FontsStyle.white14w700
                        .copyWith(color: ColorsFaces.colorThird),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (number == 1) {
                          setState(() {
                            isSelected = false;
                          });
                        } else {
                          number--;
                        }
                      });
                    },
                    icon: Icon(Icons.remove_circle, color: Color(0xffD9D9D9)),
                    padding: EdgeInsets.all(4),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Add To Cart",
                    style: FontsStyle.white14w700
                        .copyWith(color: ColorsFaces.colorSecondary),
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: ColorsFaces.colorSecondary,
                  )
                ],
              ),
      ),
    );
  }
}
