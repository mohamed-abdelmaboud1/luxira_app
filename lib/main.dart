import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:luxira_app/features/onboarding/ui/views/onborading_view.dart';
import 'package:luxira_app/features/splash/ui/views/splash_view.dart';

import 'core/helpers/custom_scroll_behavior.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      routes: {
        OnboradingView.id: (context) => OnboradingView(),
        // LoginView.id: (context) => LoginView(),
        SplashView.id: (context) => SplashView(),
        // RegisterView.id: (context) => RegisterView(),
      },
      initialRoute: SplashView.id,
    );
  }
} //shared common core !
