// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:app2/core/style/Fonts_style.dart';

class RatingStarsWidget extends StatelessWidget {
  final double rating;
  final TextStyle? titleStyle;
  final double sizeStar;
  final bool isShowRating;

  const RatingStarsWidget({
    super.key,
    required this.rating,
    this.titleStyle,
    this.sizeStar = 10,
    this.isShowRating = true,
  });

  @override
  Widget build(BuildContext context) {
    int fullStars = 0;
    if (rating >= 0 && rating <= 1.9) {
      fullStars = 1;
    } else if (rating >= 2.0 && rating <= 2.9) {
      fullStars = 2;
    } else if (rating >= 3.0 && rating <= 3.9) {
      fullStars = 3;
    } else if (rating >= 4.0 && rating < 4.9) {
      fullStars = 4;
    } else if (rating >= 5.0) {
      fullStars = 5;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(4, (index) {
            return Icon(
              index < fullStars ? Icons.star : Icons.star_border,
              color: Color(0xffFFAC50),
              size: sizeStar,
            );
          }),
        ),
        if (isShowRating)
          Text(
            "$rating",
            style: (titleStyle ?? FontsStyle.whit12w400FamiljenGrotesk),
          ),
      ],
    );
  }
}
