// ignore_for_file: file_names
import 'package:app2/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Order_Item_Widget.dart';
import 'package:flutter/material.dart';

class FormOrderWidget extends OrderItemWidget {
  const FormOrderWidget({
    super.key,
    super.height = 172,
    required super.orderId,
    required super.date,
    required super.price,
    required super.providerImageUrl,
    required super.providerName,
    required super.providerSpecialty,
    required super.additionalWidgets,
    super.isGuest = true,
  });

  @override
  // ignore: unnecessary_overrides
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
