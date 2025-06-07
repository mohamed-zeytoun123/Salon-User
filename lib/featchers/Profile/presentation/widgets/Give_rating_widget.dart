// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/All/presentation/widget/Get_Rating_Stars_Widget.dart';
import 'package:app2/featchers/Home/data/model/Rating_base_model.dart';
import 'package:flutter/material.dart';

class GiveRatingWidget extends StatefulWidget {
  const GiveRatingWidget({super.key});

  @override
  State<GiveRatingWidget> createState() => _GiveRatingWidgetState();
}

class _GiveRatingWidgetState extends State<GiveRatingWidget> {
  double _value = 5;

  @override
  Widget build(BuildContext context) {
    final RatingBase ratingBase = RatingBase(rating: _value);

    return Column(
      children: [
        SizedBox(
          width: 300,
          child: GetRatingStarsWidget(
            starSize: 50,
            initialRating: 5,
            onRatingSelected: (value) {
              log("$value");
              setState(() {
                _value = value;
              });
            },
          ),
        ),
        Text(
          ratingBase.ratingDescription,
          style: FontsStyle.whid18w700.copyWith(color: Color(0xff565656)),
        ),
      ],
    );
  }
}
