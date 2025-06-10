// ignore_for_file: unused_import
import 'dart:developer';
import 'dart:ffi';

import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/core/app/app_manager_state.dart';

import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/network/dependency_Injection.dart';
import 'package:app2/featchers/All/presentation/pages/all_product_page.dart';
import 'package:app2/featchers/All/presentation/pages/near_suppliers_page.dart';
import 'package:app2/featchers/All/presentation/pages/top_suppliers_page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/booking_an_appointment_freelance_product_page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/booking_confirmation_freelance_page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/invoice_details_freelance_page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/services_details_freelance_page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/frelance_profile_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_an_appointment_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_an_appointment_product_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_booking_confirmation_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_display_other_services_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_house_invoice_details_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_services_details_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_salon_booking_confirmation_page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/w_salon_invoice_details_page.dart';
import 'package:app2/featchers/Cart/presentation/pages/cart_invoice_details_page.dart';
import 'package:app2/featchers/Cart/presentation/pages/cart_page.dart';
import 'package:app2/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/pages/guest_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_page.dart';
import 'package:app2/featchers/Home/presentation/pages/nearest_fitch_page.dart';
import 'package:app2/featchers/Home/presentation/pages/provider_profile_page.dart';
import 'package:app2/featchers/Home/presentation/pages/services_category_page.dart';
import 'package:app2/featchers/Home/presentation/pages/services_details_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/input_phone_number_widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_Appointment_Servicedone_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/track_on_map_page.dart';
import 'package:app2/featchers/Notification/Presentation/pages/Notification_Page.dart';
import 'package:app2/featchers/Payment/presentation/pages/payment_method_page.dart';
import 'package:app2/featchers/Product%20Details/presentation/pages/product_details_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/edit_profile_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/f_a_q_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/favorite_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/my_profile_change_password_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/my_profile_guest_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_O_T_P_Number_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/payment_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/privacy_poicy_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/rating_order_page.dart';
import 'package:app2/featchers/auth/presentation/pages/change_password_page.dart';
import 'package:app2/featchers/auth/presentation/pages/create_new_account_page.dart';
import 'package:app2/featchers/auth/presentation/pages/login_page.dart';
import 'package:app2/featchers/auth/presentation/pages/o_t_p_number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/o_t_p_new_number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/phone_number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/Select_Location_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/failed_success_page.dart';
import 'package:app2/featchers/auth/presentation/pages/welcome_back_page.dart';
import 'package:app2/transelate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  initDependencyInjection();
  final locale = Locale('en');

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      startLocale: locale,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of yةشour application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppManagerCubit()..initApp(),
      child: BlocBuilder<AppManagerCubit, AppManagerState>(
          builder: (context, appState) {
        return MaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          title: 'MY Salon',
          theme: ThemeData(primarySwatch: Colors.blue),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: appState.appLocale ?? context.locale,
          //!((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))
          home: WelcomeBackPage(),
          // home: LoginPage(),
          // home: ServiceDetailsPage(
          //   item: DummyData.imageItemList[1],
          // ),
          // home: ProviderProfilePage(),
          // home: FrelanceProfilePage(),
          // home: LoyaltyPointsPage(),
          // home: WServicesDetailsPage(),
          // home: PaymentMethodPage(),
          // home: HomeContentPage(),
          // home: ServicesDetailsPage(),
          // home: NotificationPage(),
          // home: PaymentMethodPage(),
          // home: WHouseBookingAnAppointmentProductPage(
          //   service: AddServiceModel(title: "Haircut", price: 50.0),
          //   index: 0,
          //   addedServices: [
          //     AddServiceModel(title: "Haircut", price: 50.0),
          //     AddServiceModel(title: "Massage", price: 70.0),
          //   ],
          // ),
          //!((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))

          // home: HomeContentPage(),
        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 19),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//! flutter_local_notifications: ^18.0.1

// image_picker: ^1.1.2
// get_it: ^8.0.3
// animated_text_kit: ^4.2.2
//   http: ^1.2.2
//   flutter_bloc: ^8.1.6
//   dartz: ^0.10.1
//   dio: ^5.7.0
//   go_router: ^14.8.0
//   permission_handler: ^11.3.1
