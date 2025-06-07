// ignore_for_file: file_names, must_be_immutable
import 'dart:developer';
import 'package:app2/core/Widgets/Custom_App_Bar_Widget.dart';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Custom_TextField_Column_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Information_User_Widget.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: CustomAppBarWidget(title: "Edit Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: InformationUserWidget(
                    isDisplayColumn: true,
                  ),
                ),
                CustomTextFieldColumnWidget(
                  onController: (controller) {
                    phoneController = controller;
                  },
                ),
                Center(
                  child: TextButtonColorMainWidget(
                      width: 300,
                      hight: 50,
                      label: "Save Edit",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log("Save Edit: Form is valid!");
                        } else {
                          log("Form is invalid!");
                          if (phoneController.text.length < 3) {
                            log("Save Edit: Text is too short");
                          }
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
