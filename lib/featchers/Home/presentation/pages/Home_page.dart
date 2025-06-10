// ignore_for_file: file_names

import 'package:app2/featchers/Home/presentation/widgets/Appointment%20Card%20Widget/Upcoming_Appointment_Card_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Home_Services_Providers_Widget.dart';
import 'package:app2/core/Widgets/nearest_suppliers_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Offers_And_Image_Slider_Widget.dart';
import 'package:app2/core/Widgets/row_search_filter_widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Service_Product_Explore_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Services_Section_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Suggested_Products_Widget.dart';
import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/core/app/app_manager_state.dart';
import 'package:app2/featchers/Home/presentation/widgets/Top_Suppliers_Widget.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Location_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Notification_Button_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFaces.colorThird,
      appBar: AppBar(
        backgroundColor: ColorsFaces.colorThird,
        titleSpacing: 0,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 21, right: 10),
          child: CircleAvatar(
            maxRadius: 27,
            minRadius: 27,
            backgroundImage:
                NetworkImage("https://picsum.photos/124/86?random=122"),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<AppManagerCubit, AppManagerState>(
              builder: (context, appState) {
            final userName =
                appState.authResponseModel?.user.name ?? "User Name".tr();
            return Text(
              userName,
              overflow: TextOverflow.ellipsis,
              style: FontsStyle.c28w400Meditative.copyWith(fontSize: 24),
            );
          }),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 100, child: LocationWidget()),
                NotificationButtonWidget(),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color(0xffD9D9D9),
            thickness: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowSearchFilterWidget(),
              OffersAndImageSliderWidget(),
              UpcomingAppointmentCardWidget(),
              ServicesSectionWidget(),
              ServiceProductExploreWidget(),
              TopSuppliersWidget(title: "Top Salon"),
              NearestSuppliersWidget(),
              HomeServicesProvidersWidget(),
              SuggestedProductsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
