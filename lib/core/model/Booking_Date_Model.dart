// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

class BookingDate {
  final int day;
  final int month;
  final int year;

  BookingDate({
    required this.day,
    required this.month,
    required this.year,
  });

  BookingDate copyWith({
    int? day,
    int? month,
    int? year,
  }) {
    return BookingDate(
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
    );
  }
}
