import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luxira_app/features/splash/ui/widgets/splash_view_body.dart';

import '../../../auth/ui/reset_password_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id = 'SplashView';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResetPasswordView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
