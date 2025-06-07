// ignore_for_file: file_names

import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class LabelAppBarBottomSheetWidget extends StatelessWidget {
  const LabelAppBarBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saved Location",
                style: FontsStyle.white32w400Meditative
                    .copyWith(color: Color(0xff000000)),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    size: 30,
                  ))
            ],
          ),
          Text(
            "The Location you entered",
            style: FontsStyle.white13w400.copyWith(color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
