// ignore_for_file: file_names

import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:flutter/material.dart';

class GalleryWorkImagesListWidget extends StatelessWidget {
  const GalleryWorkImagesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gallery Work",
            style: FontsStyle.white14w700.copyWith(color: Color(0xff000000)),
          ),
          SizedBox(
            height: 97,
            width: double.infinity,
            child: ListView.separated(
                padding: EdgeInsets.only(right: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 102,
                    height: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        DummyData.galleryWorkImagesDUMMY[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: DummyData.galleryWorkImagesDUMMY.length),
          )
        ],
      ),
    );
  }
}
