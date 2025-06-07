// ignore_for_file: file_names

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:app2/featchers/Profile/presentation/manager/Cancellation_Reason_Enum.dart';
import 'package:app2/core/style/Fonts_style.dart';

class CancellationReasons extends StatefulWidget {
  final Function(CancellationReason) onSelected;

  const CancellationReasons({super.key, required this.onSelected});

  @override
  // ignore: library_private_types_in_public_api
  _CancellationReasonsState createState() => _CancellationReasonsState();
}

class _CancellationReasonsState extends State<CancellationReasons> {
  CancellationReason? selectedReason;

  void _handleSelection(CancellationReason value) {
    setState(() {
      selectedReason = value;
    });
    widget.onSelected(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          buildReasonSelect(
            CancellationReason.changeMyMind,
            "Change my mind",
          ),
          buildReasonSelect(
            CancellationReason.noLongerNeedService,
            "I no longer need the service",
          ),
          buildReasonSelect(
            CancellationReason.didNotRespond,
            "The service provider did not respond to messages",
          ),
          buildReasonSelect(
            CancellationReason.pricesAreHigh,
            "Service provider prices are high",
          ),
        ],
      ),
    );
  }

  Widget buildReasonSelect(CancellationReason value, String title) {
    return GestureDetector(
      onTap: () => _handleSelection(value),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          spacing: 10,
          children: [
            DottedBorder(
                dashPattern: [5, 3],
                color: const Color.fromARGB(75, 158, 158, 158),
                strokeWidth: 2,
                borderType: BorderType.RRect,
                radius: Radius.circular(4),
                child: Icon(
                  Icons.check,
                  size: 22,
                  weight: 10,
                  color: selectedReason == value
                      ? ColorsFaces.colorSecondary
                      : Colors.transparent,
                )),
            Expanded(
              child: Text(
                title,
                style:
                    FontsStyle.white16w500.copyWith(color: Color(0xff515151)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
