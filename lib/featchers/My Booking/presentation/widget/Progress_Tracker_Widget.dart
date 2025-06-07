// ignore_for_file: file_names

import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:flutter/material.dart';

class StepProgressWidget extends StatelessWidget {
  final int currentStep;

  const StepProgressWidget({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  2, (index) => _buildProgressLine(currentStep > index + 1)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            3,
            (index) => _buildStep(
              index + 1,
              ["On The Way", "In Processing", "Service Done"][index],
              currentStep >= index + 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStep(int step, String label, bool isActive) {
    return Column(
      children: [
        CircleAvatar(
          radius: 14,
          backgroundColor:
              isActive ? ColorsFaces.colorSecondary : Colors.grey.shade300,
          child: Text(
            "$step",
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
        ),
        Text(
          label,
          style: TextStyle(
              color: isActive ? ColorsFaces.colorSecondary : Colors.grey),
        )
      ],
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Expanded(
      child: Container(
        height: 10,
        color: isActive ? ColorsFaces.colorSecondary : Colors.grey.shade300,
      ),
    );
  }
}
