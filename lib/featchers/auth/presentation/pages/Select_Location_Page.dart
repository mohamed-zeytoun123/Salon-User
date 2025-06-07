// ignore_for_file: file_names

import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Select_Location_Widget.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Select Location"),
      body: SelectLocationWidget(onPressed: onPressed),
    );
  }
}
