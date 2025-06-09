// ignore_for_file: file_names, deprecated_member_use

import 'package:app2/core/app/app_manager_state.dart';
import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformationUserWidget extends StatelessWidget {
  final bool isDisplayColumn;
  const InformationUserWidget({
    super.key,
    this.isDisplayColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    return isDisplayColumn
        ? BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (context, appState) {
            final userNumber =
                appState.authResponseModel?.user.phone ?? "Unknow";
            final userName =
                appState.authResponseModel?.user.name ?? "User Name";
            // ignore: unused_local_variable
            final userImage = appState.authResponseModel?.user.image;
            return Column(
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 49.5,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/124/86?random=100"),
                  //           userImage != null
                  // ? NetworkImage(userImage)
                  // : AssetImage("assets/images/default_profile.png") as ImageProvider,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: FontsStyle.white24w400Meditative.copyWith(
                        color: Color(0xff383838),
                      ),
                    ),
                    Text(
                      userNumber,
                      style: FontsStyle.whit12w400.copyWith(
                        color: Color(0xff666666),
                      ),
                    ),
                  ],
                )
              ],
            );
          })
        : BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (context, appState) {
            final userNumber =
                appState.authResponseModel?.user.phone ?? "Unknow";
            final userName =
                appState.authResponseModel?.user.name ?? "User Name";
            // ignore: unused_local_variable
            final userImage = appState.authResponseModel?.user.image;
            return Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 49.5,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/124/86?random=100"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: FontsStyle.white24w400Meditative.copyWith(
                        color: Color(0xff383838),
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      userNumber,
                      style: FontsStyle.whit12w400.copyWith(
                        color: Color(0xff666666),
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            );
          });
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  }
}
