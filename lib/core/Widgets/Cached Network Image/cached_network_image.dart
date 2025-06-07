import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget cachedImageWidget({
  required String url,
  double? width,
  double? height,
  BoxFit fit = BoxFit.cover,
  BorderRadius? borderRadius,
}) {
  final image = CachedNetworkImage(
    imageUrl: url,
    placeholder: (context, url) => Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: CircularProgressIndicator(strokeWidth: 2),
    ),
    errorWidget: (context, url, error) =>
        Icon(Icons.error, color: Colors.red, size: 30),
    width: width,
    height: height,
    fit: fit,
  );

  return borderRadius != null
      ? ClipRRect(borderRadius: borderRadius, child: image)
      : image;
}
