// ignore_for_file: must_be_immutable, file_names

import 'dart:developer';

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Country_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Email_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Gender_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Name_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/core/app/App_Manager_Cubit.dart';
import 'package:app2/core/app/App_Manager_State.dart';
import 'package:app2/featchers/Profile/presentation/manager/Type_Gender_Enum.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Label_Form_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

class CustomTextFieldColumnWidget extends StatelessWidget {
  CustomTextFieldColumnWidget({
    required final Function(TextEditingController) onController,
    super.key,
  });
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PhoneController phoneController = PhoneController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, appState) {
      return Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFormWidget(label: 'User name'),
          InputNameWidget(
            controller: nameController,
            hintText: "User Name",
            width: double.infinity,
          ),
          LabelFormWidget(label: 'Email'),
          InputEmailWidget(
            controller: emailController,
            hintText: "User @ gmail . com",
            width: double.infinity,
          ),
          LabelFormWidget(label: 'Phone Number'),
          InputPhoneNumberWidget(controller: phoneController),
          LabelFormWidget(label: 'Gender'),
          InputGenderWidget(
            onChanged: (gender) {
              log("$gender");
            },
            selectedGender: TypeGenderEnum.Female,
            width: double.infinity,
          ),
          LabelFormWidget(label: 'Country'),
          InputCountryWidget(
              controller: countryController, hintText: "User Country")
        ],
      );
    });
  }
}
