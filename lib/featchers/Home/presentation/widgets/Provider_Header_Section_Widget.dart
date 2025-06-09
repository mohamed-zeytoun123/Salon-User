// ignore_for_file: file_names

import 'package:app2/core/colors/colors_faces.dart';
import 'package:flutter/material.dart';
import 'package:app2/core/assets/image_url.dart';

class ProviderHeaderSectionWidget extends StatelessWidget {
  const ProviderHeaderSectionWidget({super.key, required this.isFreelance});
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isFreelance ? Color.fromARGB(255, 82, 24, 47) : null,
              gradient: isFreelance ? null : ColorsFaces.colorMain),
        ),
        SizedBox(
          height: 200,
          child: Image.asset(
            ImageUrl.backgroundImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
