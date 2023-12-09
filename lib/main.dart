import 'package:flutter/material.dart';
import 'package:health_symptoms/core/themes/theme.dart';
import 'package:health_symptoms/features/onboarding/presentation/views/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Health Symptoms',
        theme: AppTheme.themeData(Brightness.light),
        darkTheme: AppTheme.themeData(Brightness.dark),
        home: const OnboardingView());
  }
}
