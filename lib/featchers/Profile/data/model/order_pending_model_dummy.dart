// ignore_for_file: file_names
import 'package:app2/core/model/Booking_Date_Model.dart';

class OrderPendingModelDUMMY {
  final int orderId;
  final BookingDate date;
  final double price;
  final String providerImageUrl;
  final String providerName;
  final String providerSpecialty;
  final bool isGuest;

  OrderPendingModelDUMMY({
    required this.orderId,
    required this.date,
    required this.price,
    required this.providerImageUrl,
    required this.providerName,
    required this.providerSpecialty,
    this.isGuest = true,
  });
}
