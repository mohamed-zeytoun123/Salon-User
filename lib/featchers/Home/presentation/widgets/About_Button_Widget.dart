// ignore_for_file: file_names

import 'dart:developer';

import 'package:app2/core/Widgets/status_badge_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/About_Provider_Dialog_Content_Widget.dart';
import 'package:flutter/material.dart';

class AboutButtonWidget extends StatelessWidget {
  const AboutButtonWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            log("About");
            showDialog(
                context: context,
                builder: (context) =>
                    Dialog(child: AboutProviderDialogContentWidget()));
          },
          borderRadius: BorderRadius.circular(100),
          child: StatusBadgeWidget(
            width: 80,
            text: "About",
            textcolor: isFreelance
                ? Color.fromARGB(255, 82, 24, 47)
                : Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
