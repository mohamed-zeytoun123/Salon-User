// ignore_for_file: file_names

class CosmeticItemModelDUMMY {
  final String imageUrl;
  final String profileImageUrl;
  final String title;
  final String location;
  final ServiceType serviceType;
  final int distance;
  final double rating;
  final int reviewsCount;

  CosmeticItemModelDUMMY({
    required this.imageUrl,
    required this.profileImageUrl,
    required this.title,
    required this.location,
    required this.serviceType,
    required this.distance,
    required this.rating,
    required this.reviewsCount,
  });
}

// ignore: constant_identifier_names
enum ServiceType { Salon, Freelance }
