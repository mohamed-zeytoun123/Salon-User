// ignore_for_file: file_names

import 'package:app2/core/Widgets/Appointment%20Card%20Widget/Upcoming_Appointment_Card_widget.dart';
import 'package:app2/core/Widgets/Home_Services_Providers_Widget.dart';
import 'package:app2/core/Widgets/Nearest_Suppliers_Widget.dart';
import 'package:app2/core/Widgets/Offers_And_Image_Slider_Widget.dart';
import 'package:app2/core/Widgets/Row_Search_Filter_widget.dart';
import 'package:app2/core/Widgets/Service_Product_Explore_Widget.dart';
import 'package:app2/core/Widgets/Services_Section_Widget.dart';
import 'package:app2/core/Widgets/Suggested_Products_Widget.dart';
import 'package:app2/core/app/App_Manager_Cubit.dart';
import 'package:app2/core/app/App_Manager_State.dart';
import 'package:app2/featchers/Home/presentation/widgets/Top_Suppliers_Widget.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Home/presentation/widgets/Location_Widget.dart';
import 'package:app2/featchers/Home/presentation/widgets/Notification_Button_Widget.dart';
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
              builder: (context, state) {
            final userName = state.authResponseModel?.user.name ?? "User Name";
            return Text(
              userName,
              // "User Name",
              overflow: TextOverflow.ellipsis,
              style: FontsStyle.c28w400Meditative,
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
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
