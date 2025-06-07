// ignore_for_file: file_names

class AddServiceModel {
  final double price;
  final String title;
  int number; // هذا هو الحقل الذي سيمثل الكمية

  AddServiceModel({
    required this.title,
    required this.price,
    this.number = 1, // قيمة افتراضية للعدد
  });
}
