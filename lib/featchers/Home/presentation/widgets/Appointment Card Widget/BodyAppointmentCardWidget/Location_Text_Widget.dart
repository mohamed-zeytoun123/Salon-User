// ignore_for_file: file_names
import 'package:app2/core/assets/icons_url.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/style/fonts_style.dart';

class LocationTextWidget extends StatelessWidget {
  final String location;

  const LocationTextWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          IconsUrl.location,
          color: const Color(0xff000000),
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          location,
          style: FontsStyle.whit11w700.copyWith(
            color: const Color(0xff000000),
            decoration: TextDecoration.underline,
            decorationThickness: 1,
            decorationColor: const Color(0xff000000),
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ],
    );
  }
}
