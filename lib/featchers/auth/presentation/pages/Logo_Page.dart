// // ignore_for_file: file_names

// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:app2/featchers/auth/presentation/pages/Welcome_Back_Page.dart';
// import 'package:app2/core/colors/Background_color_pages.dart';
// import 'package:app2/core/style/Fonts_style.dart';
// import 'package:flutter/material.dart';

// class LogoPage extends StatefulWidget {
//   const LogoPage({super.key});

//   @override
//   State<LogoPage> createState() => _LogoPageState();
// }

// class _LogoPageState extends State<LogoPage> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         // ignore: use_build_context_synchronously
//         context,
//         MaterialPageRoute(builder: (context) => const WelcomeBack()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: BackgroundColorPages(
//           child: Center(
//             child: Center(
//               child: DefaultTextStyle(
//                 style: FontsStyle.white45w400,
//                 child: AnimatedTextKit(
//                   animatedTexts: [
//                     FadeAnimatedText('Logo'),
//                     RotateAnimatedText('Welcome!'),
//                   ],
//                   repeatForever: true,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
