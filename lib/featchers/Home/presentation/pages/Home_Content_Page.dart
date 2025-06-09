// ignore_for_file: file_names

import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/body_content_widget.dart';
import 'package:app2/core/Widgets/Bottom%20Sheet%20Widgets/custom_bottom_navBar_widget.dart';
import 'package:app2/core/network/dependency_Injection.dart';
import 'package:app2/featchers/Home/data/source/home_remot_data_source.dart';
import 'package:app2/featchers/Home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContentPage extends StatefulWidget {
  const HomeContentPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeContentPageState createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {
  int _currentIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => HomeCubit(remot: getInstance<HomeRemotDataSource>()),
        child: Scaffold(
          body: BodyContent(currentIndex: _currentIndex),
          bottomNavigationBar: CustomBottomNavBarWidget(
            currentIndex: _currentIndex,
            onTabTapped: _updateIndex,
          ),
        ));
  }
}
