// ignore_for_file: file_names
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Location_Map_Preview_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Provider_Location_Details_Widget.dart';
import 'package:flutter/material.dart';

class ProviderAddressSectionWidget extends StatelessWidget {
  const ProviderAddressSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address",
            style: FontsStyle.white14w700.copyWith(color: Color(0xff000000)),
          ),
          LocationMapPreviewWidget(
            width: 300,
            hight: 100,
          ),
          ProviderLocationDetailsWidget()
        ],
      ),
    );
  }
}
