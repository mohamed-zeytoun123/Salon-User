// ignore_for_file: file_names
import 'package:app2/core/Widgets/Gradient_Text_widget.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Service_Info_model.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class ServiceInfoRowWidget extends StatelessWidget {
  final ServiceInfoModelDUMMY serviceInfo;
  final bool? isDarkPrice;
  const ServiceInfoRowWidget({
    super.key,
    required this.serviceInfo,
    this.isDarkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 67,
                height: 46.55086898803711,
                child: Image.network(
                  serviceInfo.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceInfo.title,
                  overflow: TextOverflow.ellipsis,
                  style:
                      FontsStyle.black16w700.copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "${serviceInfo.hour} hr ${serviceInfo.minute} mins",
                  overflow: TextOverflow.ellipsis,
                  style:
                      FontsStyle.white13w400.copyWith(color: Color(0xff818181)),
                ),
              ],
            ),
          ],
        ),
        isDarkPrice == true
            ? Text(
                "\$${serviceInfo.price}",
                style:
                    FontsStyle.whit20ww700.copyWith(color: Color(0xFF952323)),
              )
            : GradientText(
                text: "\$${serviceInfo.price}",
                style: FontsStyle.whit20ww700,
              ),
      ],
    );
  }
}
