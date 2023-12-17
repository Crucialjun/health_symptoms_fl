import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_symptoms/core/themes/theme.dart';
import 'package:health_symptoms/features/onboarding/presentation/views/bloc/onboarding_bloc.dart';
import 'package:health_symptoms/features/onboarding/presentation/views/onboarding_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health Symptoms',
            theme: AppTheme.themeData(Brightness.light),
            darkTheme: AppTheme.themeData(Brightness.dark),
            home: BlocProvider(
              create: (context) => OnboardingBloc(),
              child: const OnboardingView(),
            )));
  }
}
