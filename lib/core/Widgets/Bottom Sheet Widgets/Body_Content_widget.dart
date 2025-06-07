// ignore_for_file: file_names

import 'package:app2/core/network/dependency_Injection.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Nearest_Suppliers_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyContent extends StatelessWidget {
  final int currentIndex;

  const BodyContent({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(remot: getInstance<HomeRemotDataSource>()),
      child: Builder(
        builder: (context) {
          final List<Widget> pages = [
            HomePage(),
            NearestSuppliersPage(),
            AllAppointmentPage(),
            MyOrderPage(),
            MyProfilePage(),
          ];

          return IndexedStack(
            index: currentIndex,
            children: pages,
          );
        },
      ),
    );
  }
}
