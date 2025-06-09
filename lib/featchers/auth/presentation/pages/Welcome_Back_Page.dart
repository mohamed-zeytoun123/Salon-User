// ignore_for_file: file_names
import 'package:app2/featchers/auth/presentation/pages/Login_Page.dart';
import 'package:app2/featchers/auth/presentation/pages/Select_Location_Page.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  double _buttonPosition = 0.0; //! موقع الزر الابتدائي
  final double _maxDragDistance = 300.0; //! المسافة القصوى للسحب
  final double _buttonWidth = 170.0; //! عرض الزر
  bool _isNavigating = false; //! للتحقق من التنقل المتكرر

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                text: "Welcome Back to\n",
                style: FontsStyle.c45w400Meditative,
                children: [
                  TextSpan(
                    text: "Project Name",
                    style: FontsStyle.c45w400Meditative,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "Let us add a magical touch to ",
                style: FontsStyle.c17w400,
                children: [
                  TextSpan(
                    text: "your beauty",
                    style: FontsStyle.c17w700,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Container(
              width: _maxDragDistance + 50, //! عرض السطر
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffFFF7F3),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  //! الزر القابل للسحب
                  Positioned(
                    left: _buttonPosition,
                    top: 0,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          //! حساب الحد الأقصى للموقع الذي يمكن السحب إليه
                          final maxPosition =
                              _maxDragDistance - _buttonWidth + 50;
                          //! السماح بالسحب للأمام فقط وبداخل الحدود
                          if (details.delta.dx > 0 &&
                              _buttonPosition + details.delta.dx <=
                                  maxPosition) {
                            _buttonPosition += details.delta.dx;
                          } else if (_buttonPosition + details.delta.dx >
                              maxPosition) {
                            _buttonPosition = maxPosition;
                            _onDragComplete(); //! تنفيذ الإجراء عند الوصول للنهاية
                            _buttonPosition == 0.0;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: _buttonWidth,
                        decoration: BoxDecoration(
                          gradient: ColorsFaces.colorMain,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Swipe to Continue",
                              style: FontsStyle.white14w700,
                            ),
                            Icon(Icons.keyboard_double_arrow_right,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60)
          ],
        ),
      ),
    );
  }

  //! تنفيذ الإجراء عند السحب للنهاية
  void _onDragComplete() {
    if (_isNavigating) return; //! منع التنقل المتكرر
    _isNavigating = true;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Welcome'),
        duration: Duration(seconds: 2),
      ),
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => SelectLocation(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectLocation(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                                (route) => false,
                              );
                            },
                          ),
                        ),
                        (route) => false,
                      );
                    },
                  )),
        ).then((_) => _isNavigating = false); //! إعادة تعيين المتغير بعد العودة
      }
    });
  }
}
