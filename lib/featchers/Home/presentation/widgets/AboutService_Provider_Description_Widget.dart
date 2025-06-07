// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class AboutServiceProviderDescriptionWidget extends StatelessWidget {
  const AboutServiceProviderDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Service Provider",
            style: FontsStyle.white14w700.copyWith(color: Color(0xff000000)),
          ),
          Text(
            "a licensed professional who has received specialized training in the care and treatment of skin. They would be knowledgeable about various skin types, conditions, and concerns, and would be able to recommend and perform treatments such as facials, chemical peels, and microdermabrasion. They would also be able to provide advice on skincare products and routines tailored to an individual's needs.",
            style: FontsStyle.whit16w400.copyWith(color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
