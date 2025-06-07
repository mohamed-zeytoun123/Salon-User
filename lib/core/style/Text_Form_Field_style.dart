// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFormFieldStyle {
  static InputDecoration formOne(String label, [TextStyle? style]) {
    return InputDecoration(
      hintStyle: style ?? const TextStyle(fontSize: 14, color: Colors.grey),
      hintText: label,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      errorStyle: const TextStyle(fontSize: 12, height: 0.8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.blue, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red, width: 1),
      ),
    );
  }
}
