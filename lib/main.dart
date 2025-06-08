// ignore_for_file: unused_import
import 'dart:developer';
import 'dart:ffi';

import 'package:app2/core/app/App_Manager_Cubit.dart';
import 'package:app2/core/app/App_Manager_State.dart';
import 'package:app2/core/colors/Colors_Faces.dart';
import 'package:app2/core/network/dependency_Injection.dart';
import 'package:app2/featchers/All/presentation/pages/All_Product_Page.dart';
import 'package:app2/featchers/All/presentation/pages/Near_Suppliers_Page.dart';
import 'package:app2/featchers/All/presentation/pages/Top_Suppliers_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Booking_An_Appointment_Freelance_Product_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Booking_Confirmation_Freelance_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Invoice_details_Freelance_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Services_Details_Freelance_Page.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/page/Frelance_Profile_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Booking_An_Appointment_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Booking_An_Appointment_Product_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Booking_Confirmation_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Display_Other_Services_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_House_Invoice_Details_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_Services_Details_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_Salon_Booking_Confirmation_Page.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/presentation/page/W_Salon_Invoice_Details_Page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Cart_Invoice_details_Page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Cart_Page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Loyalty_Points_Page.dart';
import 'package:app2/featchers/Cart/presentation/pages/Wallet_Page.dart';
import 'package:app2/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:app2/featchers/Home/data/model/dummy_data.dart';
import 'package:app2/featchers/Home/presentation/pages/Guest_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_page.dart';
import 'package:app2/featchers/Home/presentation/pages/nearest_fitch_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Services_Category_page.dart';
import 'package:app2/featchers/Home/presentation/pages/Services_Details_Page.dart';
import 'package:app2/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:app2/core/Widgets/Text%20Form%20Field%20Widgets/Input_Phone_Number_Widget.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_Appointment_Servicedone_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/All_appointment_Processing_Page.dart';
import 'package:app2/featchers/My%20Booking/presentation/pages/Track_on_Map_Page.dart';
import 'package:app2/featchers/Notification/Presentation/Notification_Page.dart';
import 'package:app2/featchers/Payment/presentation/pages/Payment_Method_Page.dart';
import 'package:app2/featchers/Product%20Details/presentation/pages/Product_Details_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Edit_Profile_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/FAQ_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Favorite_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Order_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Change_Password_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Guest_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_OTP_Number_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/My_Profile_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Payment_page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Privacy_Poicy_Page.dart';
import 'package:app2/featchers/Profile/presentation/pages/Rating_Order_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/Change_password_page.dart';
import 'package:app2/featchers/auth/presentation/pages/create_new_account_page.dart';
import 'package:app2/featchers/auth/presentation/pages/Logo_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/Login_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/OTP_Number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/OTP_new_number_page.dart';
import 'package:app2/featchers/auth/presentation/pages/Phone_Number_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/Select_Location_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/failed_success_page.dart';
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

  // This widget is the root of your application.
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
          locale: context.locale,
          //!((((((((((((((((((((((((((((((((()))))))))))))))))))))))))))))))))
          // home: LogoPage(),
          home: LoginPage(),
          // home: ServiceDetailsPage(
          //   item: DummyData.imageItemList[1],
          // ),
          // home: WalletPage(),
          // home: FrelanceProfilePage(),
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
