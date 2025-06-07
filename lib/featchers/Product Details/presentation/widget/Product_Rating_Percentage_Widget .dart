// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ProductRatingPercentageWidget extends StatelessWidget {
  final double rating;
  final Color colorborder;
  final Color colorform;

  const ProductRatingPercentageWidget({
    super.key,
    required this.rating,
    this.colorborder = const Color.fromARGB(132, 255, 193, 7),
    this.colorform = const Color.fromARGB(19, 132, 84, 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 46,
      decoration: BoxDecoration(
        color: colorform,
        border: Border.all(color: colorborder),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_purple500_sharp,
            size: 15,
            color: const Color(0xffFFC252),
          ),
          Text(
            rating.toStringAsFixed(1),
            style:
                FontsStyle.whit11w500.copyWith(color: const Color(0xff000000)),
          ),
        ],
      ),
    );
  }
}
