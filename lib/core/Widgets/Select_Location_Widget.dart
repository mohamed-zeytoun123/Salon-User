// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/assets/image_url.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class SelectLocationWidget extends StatelessWidget {
  const SelectLocationWidget({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              ImageUrl.map,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    log("Alignment");
                  },
                  child: Container(
                    width: 52,
                    height: 52,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.my_location_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 56,
                width: 343,
                decoration: BoxDecoration(
                  gradient: ColorsFaces.colorMain,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                    onPressed: onPressed,
                    child: Text(
                      "Confirm Location",
                      style: FontsStyle.white16w700,
                    )),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ],
    );
  }
}
