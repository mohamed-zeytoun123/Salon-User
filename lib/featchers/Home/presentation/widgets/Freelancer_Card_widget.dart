// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/data/model/services_all_provider_model_dummy.dart';
import 'package:app2/featchers/Home/presentation/pages/provider_profile_page.dart';
import 'package:app2/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:flutter/material.dart';

class FreelancerCardWidget extends StatelessWidget {
  final ServicesAllProviderModelDUMMY freelancer;

  const FreelancerCardWidget({
    super.key,
    required this.freelancer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProviderProfilePage())),
      child: Container(
        width: 115,
        height: 182,
        decoration: BoxDecoration(
          color: const Color(0xffFFF9F9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 118,
                width: double.infinity,
                child: Image.network(
                  freelancer.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    freelancer.name,
                    style: FontsStyle.whit12w400.copyWith(
                      color: Color(0xff43152A),
                    ),
                  ),
                  Text(
                    freelancer.subtitle,
                    style: FontsStyle.white11w400.copyWith(
                      color: const Color(0xff89274F),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff89274F),
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                  RatingStarsWidget(rating: freelancer.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
