// ignore_for_file: library_private_types_in_public_api, file_names
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/bottom_sheet_widget.dart';
import 'package:app2/core/colors/Background_color_pages.dart';
import 'package:app2/featchers/auth/presentation/widgets/Change_Password_Header_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Password_Action_Widget.dart';
import 'package:app2/featchers/auth/presentation/widgets/Password_Fields_Section_Widget.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorPages(
        child: Column(
          children: [
            ChangePasswordHeader(),
            Expanded(
              child: BottomSheetWidget(
                  height: 818,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 46),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          spacing: 30,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PasswordFieldsSection(),
                            PasswordActionWidget(formKey: _formKey)
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
