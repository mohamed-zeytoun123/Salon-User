// ignore: unused_local_variable,
// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/Expandable_text_tile_widget.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget FAQAccountListWidget = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Account",
      style: FontsStyle.white24w400Meditative
          .copyWith(color: const Color(0xff383838)),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandableTextTile(
          title: "How will my personal data be used & protected?",
          content:
              "I have hypothyroidism too and I've found that certain hormonal birth control methods can affect my thyroid.",
        ),
        ExpandableTextTile(
          title: "What will happen if I join the clinical research study?",
          content: "What will happen if I join the clinical research study?",
        ),
        ExpandableTextTile(
          title: "What is an investigational medication?",
          content: "What is an investigational medication?",
        ),
      ],
    )
  ],
);
