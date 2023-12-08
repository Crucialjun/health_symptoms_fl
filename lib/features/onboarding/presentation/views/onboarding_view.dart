import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        return const Column(
          children: [
            Icon(Icons.document_scanner_rounded),
            Text("Get diagnostics"),
            Text("Search and find diagnostics for your symptoms"),
          ],
        );
      }),
    );
  }
}
