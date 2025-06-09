// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class ProviderShowImageNameDisWidget extends StatelessWidget {
  const ProviderShowImageNameDisWidget({
    super.key,
    required this.image,
    required this.name,
    required this.discription,
    this.isShowDivider,
  });
  final String image;
  final String name;
  final String discription;
  final bool? isShowDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 19.5,
              backgroundImage: NetworkImage(image, scale: 1),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style:
                      FontsStyle.whit12w700.copyWith(color: Color(0xff000000)),
                ),
                Text(
                  discription,
                  style:
                      FontsStyle.whit10w400.copyWith(color: Color(0xff666666)),
                ),
              ],
            ),
          ],
        ),
        if (isShowDivider == true)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(
              color: const Color.fromARGB(58, 158, 158, 158),
              height: 1,
            ),
          )
      ],
    );
  }
}
