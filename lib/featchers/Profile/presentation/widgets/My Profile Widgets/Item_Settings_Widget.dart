// ignore_for_file: file_names

import 'dart:developer';
import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Profile/presentation/pages/my_profile_change_password_page.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/Custom_Border_Button_Widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/change_language_widget.dart';
import 'package:app2/featchers/Profile/presentation/widgets/My%20Profile%20Widgets/notification_switch_widget.dart';
import 'package:app2/featchers/auth/presentation/manager/auth_cubit.dart';
import 'package:app2/featchers/auth/presentation/pages/login_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemSettingsWidget extends StatelessWidget {
  const ItemSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffFFFFFF),
        elevation: 5,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Settings",
                      style: FontsStyle.white24w400Meditative.copyWith(
                        color: Color(0xff43152A),
                      )).tr(),
                  CustomBorderButtonWidget(
                      text: "Change Password",
                      onTap: () {
                        log("Change Password");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyProfileChangePasswordPage()));
                      }),
                  ChangeLanguageWidget(),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE3E3E3),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "App Notifications",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000),
                          ),
                        ).tr(),
                        NotificationSwitchWidget(
                          onToggle: (isEnabled) {
                            if (isEnabled) {
                              log("Notifications Enabled");
                            } else {
                              log("Notifications Disabled");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  CustomBorderButtonWidget(
                      text: "Log Out",
                      showIcon: false,
                      colorBorder: Color(0xffC01515),
                      colorText: Color(0xffC01515),
                      onTap: () {
                        log("Log Out");

                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: ColorsFaces.colorThird,
                            title: Text('Confirm Logout').tr(),
                            content:
                                Text('Are you sure you want to log out?').tr(),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancel').tr(),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  log("Log Out confirmed");
                                  context.read<AppManagerCubit>().logout();
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => BlocProvider(
                                        create: (context) => AuthCubit(),
                                        child: LoginPage(),
                                      ),
                                    ),
                                  );
                                },
                                child: Text('Log Out').tr(),
                              ),
                            ],
                          ),
                        );
                      }),
                  CustomBorderButtonWidget(
                      text: "Delete My Account",
                      showIcon: false,
                      colorBorder: Color(0xffC01515),
                      colorText: Color(0xffC01515),
                      onTap: () {
                        log("Delete My Account");
                      }),
                ])));
  }
}
