// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ProductQuantitySelectorWidget extends StatefulWidget {
  const ProductQuantitySelectorWidget({super.key});

  @override
  State<ProductQuantitySelectorWidget> createState() =>
      _ProductQuantitySelectorWidgetState();
}

class _ProductQuantitySelectorWidgetState
    extends State<ProductQuantitySelectorWidget> {
  int _number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 40,
      children: [
        Container(
          width: 205,
          height: 31,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: ColorsFaces.colorThird,
              border: Border.all(
                color: Color(0xffE3E3E3),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xffD9D9D9),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _number++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff3E0C0C),
                    size: 20,
                  ),
                  padding: EdgeInsets.zero,
                  splashRadius: 24,
                ),
              ),
              Text(
                "$_number",
                style: FontsStyle.whit20ww700.copyWith(
                  color: Color(0xff666666),
                ),
              ),
              CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xffD9D9D9),
                child: IconButton(
                  onPressed: () {
                    if (_number > 1) {
                      setState(() {
                        _number--;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Color(0xff3E0C0C),
                    size: 20,
                  ),
                  padding: EdgeInsets.zero,
                  splashRadius: 24,
                ),
              ),
            ],
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                _number = 0;
              });
            },
            borderRadius: BorderRadius.circular(30),
            child: Icon(
              size: 35,
              Icons.delete_forever_sharp,
              color: Color(0xffF62973),
            ),
          ),
        )
      ],
    );
  }
}
