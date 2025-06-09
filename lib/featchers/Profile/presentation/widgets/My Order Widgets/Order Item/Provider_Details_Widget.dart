// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app2/core/style/fonts_style.dart';

class ProviderDetailsWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String specialty;
  final double fontSizeName;
  final double fontSizespecialty;
  final double sizeimage;

  const ProviderDetailsWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.specialty,
    this.fontSizeName = 12,
    this.fontSizespecialty = 10,
    this.sizeimage = 19.5,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: sizeimage,
          backgroundImage: NetworkImage(
            imageUrl,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: FontsStyle.whit12w700.copyWith(
                  color: Color(0xff000000), fontSize: fontSizespecialty),
            ),
            Text(
              specialty,
              style: FontsStyle.whit10w400.copyWith(
                  color: Color(0xff666666), fontSize: fontSizespecialty),
            ),
          ],
        )
      ],
    );
  }
}
