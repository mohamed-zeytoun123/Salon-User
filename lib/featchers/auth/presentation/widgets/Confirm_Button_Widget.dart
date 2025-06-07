// ignore_for_file: file_names
import 'dart:developer';
import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_colormain_widget.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:dartz/dartz.dart'; //!  لا تحذفاااااااااااااااااا لتعدل يلي تحت😈😈😈😈😈

class ConfirmButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final PhoneController phoneController;
  final TextEditingController passwordController;

  const ConfirmButtonWidget({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return TextButtonColorMainWidget(
        width: 280,
        hight: 46,
        label: "Confirm",
        onPressed: () {
          //! بدي حط كونترولر الرقم بس لانو هلئ صفر تركتو 😉
          BlocProvider.of<AuthCubit>(context)
              .login(passwordController.text,  passwordController.text);

          log("phoneController = ${ phoneController.value.international}\npasswordController= ${passwordController.text}");
        });
  }
}
// if (formKey.currentState!.validate()) {
//             //!  لا تحذفاااااااااااااااااا لتعدل يلي تحت😈😈😈😈😈
//             final phone = phoneController.value.nsn;
//             final password = passwordController.text;
//             //! بدي حط كونترولر الرقم بس لانو هلئ صفر تركتو 😉
//             BlocProvider.of<AuthCubit>(context).login(phone, password);

//             log("phoneController = ${phoneController.value.countryCode}\npasswordController= ${passwordController.text}");
//           }
