import 'package:book_app/Features/Splash/presentation/views/widgets/splash_body.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
