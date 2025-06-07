// ignore_for_file: file_names
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/featchers/auth/presentation/widgets/Join_As_Partner_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Login_Bottom_Sheet_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (BuildContext context) {
        return AuthCubit();
      },
      child: Scaffold(
        body: BackgroundColorPages(
          child: Column(
            children: [
              JoinAsPartnerWidget(),
              LoginBottomSheetWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
