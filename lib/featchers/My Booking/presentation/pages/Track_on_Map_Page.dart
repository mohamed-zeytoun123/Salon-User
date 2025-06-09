// ignore_for_file: file_names
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/assets/image_url.dart';
import 'package:flutter/material.dart';

class TrackOnMapPage extends StatelessWidget {
  const TrackOnMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(title: "Track on Map"),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            ImageUrl.map,
            fit: BoxFit.cover,
          ),
        ));
  }
}
