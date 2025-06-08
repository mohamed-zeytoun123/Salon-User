// ignore_for_file: file_names
import 'package:app2/core/Widgets/Status_Badge_Widget.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Provider_Info_Model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ProviderInfoRowWidget extends StatelessWidget {
  final ProviderInfoModel providerInfoModel;

  const ProviderInfoRowWidget({
    super.key,
    required this.providerInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          providerInfoModel.providerName,
          style: FontsStyle.white16w800.copyWith(color: Color(0xff121212)),
        ),
        StatusBadgeWidget(text: providerInfoModel.status),
      ],
    );
  }
}
