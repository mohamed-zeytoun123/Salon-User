// ignore_for_file: non_constant_identifier_names, file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/expandable_text_tile_widget.dart';

import 'package:flutter/material.dart';

var FAQPaymentListWidget = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Payment",
      style: FontsStyle.whit24w400.copyWith(color: Color(0xff383838)),
    ),
    ExpandableTextTile(
      title: "How are research study participants protected?",
      content: "How are research study participants protected?",
    ),
    ExpandableTextTile(
      title: "What are the risks and benefits of joining?",
      content: "What are the risks and benefits of joining?",
    ),
  ],
);
