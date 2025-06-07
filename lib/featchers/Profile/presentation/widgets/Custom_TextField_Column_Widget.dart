// ignore_for_file: must_be_immutable, file_names

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Country_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Email_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Gender_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Name_Widget.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/core/app/App_Manager_Cubit.dart';
import 'package:app2/core/app/App_Manager_State.dart';
import 'package:app2/featchers/Profile/presentation/manager/Type_Gender_Enum.dart';
import 'package:app2/featchers/Profile/presentation/widgets/Label_Form_Widget.dart';

class CustomTextFieldColumnWidget extends StatefulWidget {
  const CustomTextFieldColumnWidget({
    required final Function(TextEditingController) onController,
    super.key,
  });

  @override
  State<CustomTextFieldColumnWidget> createState() =>
      _CustomTextFieldColumnWidgetState();
}

class _CustomTextFieldColumnWidgetState
    extends State<CustomTextFieldColumnWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  PhoneController phoneController = PhoneController();
  TextEditingController countryController = TextEditingController();

  TypeGenderEnum? selectedGender;

  bool _initialized = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    countryController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final appState = context.read<AppManagerCubit>().state;

    if (!_initialized && appState.authResponseModel != null) {
      nameController.text = appState.authResponseModel!.user.name;
      emailController.text = appState.authResponseModel!.user.email;
      if (appState.myLocation != null) {
        countryController.text = appState.myLocation!;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _initializePhone(appState.authResponseModel!.user.phone);
      });

      final genderStr = appState.authResponseModel!.user.gender!.toLowerCase();
      if (genderStr == "male") {
        selectedGender = TypeGenderEnum.Male;
      } else if (genderStr == "female") {
        selectedGender = TypeGenderEnum.Female;
      }

      _initialized = true;
    }
  }

  Future<void> _initializePhone(String phone) async {
    try {
      final parsedPhone = await PhoneNumber.parse(phone);
      if (!mounted) return;
      setState(() {
        phoneController = PhoneController(initialValue: parsedPhone);
      });
    } catch (e) {
      log("Error parsing phone number: $e");
    }
  }

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
            selectedGender: selectedGender,
            onChanged: (gender) {
              setState(() {
                selectedGender = gender;
              });
              log("Selected Gender: $gender");
            },
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
