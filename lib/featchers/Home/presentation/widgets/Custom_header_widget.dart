// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String title;
  final Widget? child;
  final VoidCallback? onTap;
  final TextStyle titleStyle;
  const CustomHeaderWidget({
    super.key,
    required this.title,
    this.child,
    this.onTap,
    required this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: titleStyle).tr(),
        if (onTap != null)
          InkWell(
            onTap: onTap,
            child: child ??
                Row(
                  spacing: 10,
                  children: [
                    Text("See All",
                            style: FontsStyle.white14w500
                                .copyWith(color: Color(0xff515151)))
                        .tr(),
                    Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Color(0xff000000)),
                  ],
                ),
          ),
      ],
    );
  }
}
