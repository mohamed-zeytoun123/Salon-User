// ignore_for_file: file_names

import 'package:app2/featchers/Home/data/model/Rating_base_model.dart';

class RateProductDetailsModelDUMMY extends RatingBase {
  final String ? reviewerImage;
  final String reviewerName;

  RateProductDetailsModelDUMMY({
     this.reviewerImage,
    required this.reviewerName,
    required super.rating,
  });
}
