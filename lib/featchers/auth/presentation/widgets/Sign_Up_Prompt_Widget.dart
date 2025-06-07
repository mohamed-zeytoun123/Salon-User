// ignore_for_file: file_names

import 'package:app2/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/featchers/auth/presentation/pages/Create_new_account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPromptWidget extends StatelessWidget {
  const SignUpPromptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Don't Have An Account ?",
            style: FontsStyle.black20w400SF_Pro_Display_Heavy
                .copyWith(fontSize: 18, color: Color(0xff515151)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 25),
          child: TextButtonWhiteWidget(
            width: 280,
            hight: 46,
            label: "Sign up",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<AuthCubit>(context),
                    child: CreateNewAccountPage(),
                  ),
                ),
              );
            },
            borderColor: Color(0xff3F1428),
            fontsStyle: FontsStyle.black17w500SF_Pro_Display_Heavy,
          ),
        ),
      ],
    );
  }
}
