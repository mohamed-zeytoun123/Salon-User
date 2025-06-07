import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerSliderPlaceholder() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 232,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
