import 'package:app2/core/app/app_manager_cubit.dart';
import 'package:app2/featchers/Home/presentation/pages/home_content_page.dart';
import 'package:app2/featchers/auth/presentation/pages/login_page.dart';
import 'package:app2/featchers/auth/presentation/pages/select_location_page.dart';
import 'package:app2/core/colors/colors_faces.dart';
import 'package:app2/core/style/fonts_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBackPage extends StatefulWidget {
  const WelcomeBackPage({super.key});

  @override
  State<WelcomeBackPage> createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage>
    with TickerProviderStateMixin {
  final double _maxDragDistance = 300.0;
  final double _buttonWidth = 170.0;
  bool _isNavigating = false;

  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;

  double _dragPosition = 0.0;

  bool _showLoadingAnimation = false;

  late AnimationController _slideController;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _rotationAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _onDragComplete();
      }
    });

    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _slideController.addListener(() {
      setState(() {
        _dragPosition = _slideAnimation.value;
      });
    });

    _slideController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showLoadingAnimation = true;
        });
        _animationController.forward(from: 0);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  void _startAnimationToEnd() {
    final maxPosition = _maxDragDistance - _buttonWidth + 50;

    _slideAnimation =
        Tween<double>(begin: _dragPosition, end: maxPosition).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeOut),
    );

    _slideController.forward(from: 0);
  }

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
                text: "Welcome Back to\n".tr(),
                style: FontsStyle.c45w400Meditative,
                children: [
                  TextSpan(
                    text: "Project Name".tr(),
                    style: FontsStyle.c45w400Meditative,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "Let us add a magical touch to".tr(),
                style: FontsStyle.c17w400,
                children: [
                  TextSpan(
                    text: "your beauty".tr(),
                    style: FontsStyle.c17w700,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            if (!_showLoadingAnimation)
              Container(
                width: _maxDragDistance + 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF7F3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: _dragPosition,
                      top: 0,
                      child: GestureDetector(
                        onPanUpdate: (details) {
                          if (_showLoadingAnimation) return;
                          setState(() {
                            final maxPosition =
                                _maxDragDistance - _buttonWidth + 50;
                            if (details.delta.dx > 0 &&
                                _dragPosition + details.delta.dx <=
                                    maxPosition) {
                              _dragPosition += details.delta.dx;
                            } else if (_dragPosition + details.delta.dx >
                                maxPosition) {
                              _startAnimationToEnd();
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
                              ).tr(),
                              const Icon(
                                Icons.keyboard_double_arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              SizedBox(
                height: 100,
                width: 100,
                child: RotationTransition(
                  turns: _rotationAnimation,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.check,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  void _onDragComplete() {
    if (_isNavigating) return;
    _isNavigating = true;

    final appState = BlocProvider.of<AppManagerCubit>(context).state;

    if (appState.authResponseModel != null) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomeContentPage()),
        (route) => false,
      );
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => SelectLocation(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
        ),
        (route) => false,
      );
    }

    _isNavigating = false;
  }
}
