// ignore_for_file: file_names

import 'package:app2/core/assets/image_url.dart';
import 'package:flutter/material.dart';

class LocationMapPreviewWidget extends StatelessWidget {
  const LocationMapPreviewWidget({
    super.key,
    required this.width,
    required this.hight,
  });
  final double width;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          ImageUrl.map3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
