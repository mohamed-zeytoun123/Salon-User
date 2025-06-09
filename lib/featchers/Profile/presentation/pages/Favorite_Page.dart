// ignore_for_file: file_names

import 'package:app2/core/Widgets/row_search_filter_widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
          title: Text(
            "Favorite",
            style: FontsStyle.c28w400Meditative.copyWith(
              color: const Color(0xff000000),
            ),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Column(
              children: [
                const Divider(
                    color: Color(0xffD9D9D9), thickness: 1.0, height: 1),
                TabBar(
                  unselectedLabelStyle: FontsStyle.white24w400Meditative
                      .copyWith(color: Color(0xff4A172E)),
                  labelStyle: FontsStyle.white24w400Meditative
                      .copyWith(color: Color(0xff4A172E)),
                  indicatorColor: Color(0xFF4E1830),
                  indicatorWeight: 3,
                  labelColor: Color(0xFF4E1830),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Services"),
                    Tab(text: "Product"),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: ColorsFaces.colorThird,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            spacing: 10,
            children: [
              RowSearchFilterWidget(),
              Expanded(
                child: const TabBarView(
                  children: [
                    FavoriteAllPage(),
                    FavoriteServicesPage(),
                    FavoriteProductPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteAllPage extends StatelessWidget {
  const FavoriteAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("All", style: TextStyle(fontSize: 24)));
  }
}

class FavoriteServicesPage extends StatelessWidget {
  const FavoriteServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Services", style: TextStyle(fontSize: 24)));
  }
}

class FavoriteProductPage extends StatelessWidget {
  const FavoriteProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Product", style: TextStyle(fontSize: 24)));
  }
}
