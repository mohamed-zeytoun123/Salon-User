// ignore_for_file: file_names
import 'dart:developer';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/All/presentation/widget/Get_Rating_Stars_Widget.dart';
import 'package:flutter/material.dart';

class RatingContentWidget extends StatelessWidget {
  const RatingContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rating",
          style: FontsStyle.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        GetRatingStarsWidget(
          initialRating: 3,
          starSize: 50,
          onRatingSelected: (value) {
            log("rating : $value");
          },
        ),
      ],
    );
  }
}
