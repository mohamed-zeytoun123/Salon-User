// ignore_for_file: file_names, non_constant_identifier_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/Expandable_text_tile_widget.dart';
import 'package:flutter/material.dart';

Widget FAQServicesListWidget = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Services",
      style: FontsStyle.whit24w400.copyWith(color: Color(0xff383838)),
    ),
    ExpandableTextTile(
      title: "How does staff augmentation differ from traditional outsourcing?",
      content:
          "How does staff augmentation differ from traditional outsourcing?",
    ),
    ExpandableTextTile(
      title:
          "What is the cost of staff augmentation services and how is it calculated?",
      content:
          "What is the cost of staff augmentation services and how is it calculated?",
    ),
  ],
);
