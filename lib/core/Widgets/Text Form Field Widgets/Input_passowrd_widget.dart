// ignore_for_file: file_names

import 'package:app2/core/style/Text_Form_Field_style.dart';
import 'package:flutter/material.dart';

class InputPassowrdWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double? width;

  const InputPassowrdWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
  });

  @override
  State<InputPassowrdWidget> createState() => _InputPassowrdWidgetState();
}

class _InputPassowrdWidgetState extends State<InputPassowrdWidget> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 375,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65,
            child: TextFormField(
              controller: widget.controller,
              obscureText: isShow,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              decoration: TextFormFieldStyle.formOne(widget.hintText).copyWith(
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  icon: Icon(
                    isShow ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
