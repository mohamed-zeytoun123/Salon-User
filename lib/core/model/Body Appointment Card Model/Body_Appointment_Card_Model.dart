// ignore_for_file: file_names

import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Booking_Date_Time_model.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Provider_Info_Model.dart';
import 'package:app2/core/model/Body%20Appointment%20Card%20Model/Service_Info_model.dart';

class BodyAppointmentCardModelDUMMY {
  final ServiceInfoModelDUMMY serviceInfo;
  final ProviderInfoModel providerInfoModel;
  final String location;
  final BookingDateTime bookingDateTime;

  BodyAppointmentCardModelDUMMY({
    required this.serviceInfo,
    required this.providerInfoModel,
    required this.location,
    required this.bookingDateTime,
  });
}
