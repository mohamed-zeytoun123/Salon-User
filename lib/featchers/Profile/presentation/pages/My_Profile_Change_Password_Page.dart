// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:app2/core/Widgets/custom_app_bar_widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:app2/core/style/app_snack_bar.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:app2/featchers/Profile/presentation/pages/my_profile_o_t_p_number_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyProfileChangePasswordPage extends StatelessWidget {
  MyProfileChangePasswordPage({super.key});
  TextEditingController passswordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: CustomAppBarWidget(
        title: "Change Password",
        color: Color(0xffF1F1F1),
      ),
      body: BottomSheetWidget(
          height: (MediaQuery.of(context).size.height) - 150,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      "New Password",
                      style: FontsStyle.white14w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    InputPassowrdWidget(
                      controller: passswordController,
                      hintText: "************************",
                    ),
                    Text(
                      "Confirm Password",
                      style: FontsStyle.white14w700
                          .copyWith(color: Color(0xff000000)),
                    ),
                    InputPassowrdWidget(
                      controller: confirmController,
                      hintText: "************************",
                    ),
                    SizedBox(height: 100),
                    Center(
                        child: TextButtonColorMainWidget(
                            width: 301,
                            hight: 50,
                            label: "Create New Password",
                            onPressed: () {
                              //!12121212121212121212121212121212121212121212121212121212121212121212121212
                              if (formKey.currentState!.validate()) {
                                if (passswordController.text !=
                                    confirmController.text) {
                                  AppSnackBar.show(
                                      context: context,
                                      message: "Passwords do not match!",
                                      backgroundColor: Colors.redAccent,
                                      duration: const Duration(seconds: 3),
                                      icon: Icons.cancel);
                                } else {
                                  log("New Password: ${confirmController.text}");
                                  AppSnackBar.show(
                                      context: context,
                                      message: "Password changed successfully!",
                                      backgroundColor: Colors.green,
                                      duration: const Duration(seconds: 3),
                                      icon: Icons.check);

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyProfileOTPNumberPage()));
                                }
                              }
                              //!12121212121212121212121212121212121212121212121212121212121212121212121212
                            }))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
