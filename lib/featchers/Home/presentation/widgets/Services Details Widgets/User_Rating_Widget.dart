// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/data/model/Rate_Product_Details_Model.dart';
import 'package:app2/featchers/Home/presentation/widgets/Rating_stars_widget.dart';

class UserRatingWidget extends StatelessWidget {
  final RateProductDetailsModelDUMMY model;

  const UserRatingWidget({
    super.key,
    required this.model,
  });

  Color getRandomColor() {
    final random = Random(model.reviewerName.hashCode);
    return Color.fromARGB(
      255,
      random.nextInt(200) + 30,
      random.nextInt(200) + 30,
      random.nextInt(200) + 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasImage =
        model.reviewerImage != null && model.reviewerImage!.isNotEmpty;
    final firstLetter = model.reviewerName.isNotEmpty
        ? model.reviewerName[0].toUpperCase()
        : '?';

    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: hasImage ? Colors.transparent : getRandomColor(),
          backgroundImage: hasImage ? NetworkImage(model.reviewerImage!) : null,
          child: !hasImage
              ? Text(
                  firstLetter,
                  style: FontsStyle.whit16w700.copyWith(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                )
              : null,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.reviewerName,
              style: FontsStyle.whit16w700.copyWith(
                color: const Color(0xff515151),
              ),
            ),
            RatingStarsWidget(
              rating: model.rating,
              sizeStar: 15,
              isShowRating: false,
            ),
            Text(
              model.ratingDescription,
              style: FontsStyle.f14w400Dosi
                  .copyWith(color: const Color(0xff515151)),
            ),
          ],
        ),
      ],
    );
  }
}
