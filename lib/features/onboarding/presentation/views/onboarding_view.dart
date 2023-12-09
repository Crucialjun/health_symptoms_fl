import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_symptoms/core/constants/app_assets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        return Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.symptomsSvg),
            const Text("Get diagnostics"),
            const Text("Search and find diagnostics for your symptoms"),
          ],
        );
      }),
    );
  }
}
