import 'package:flutter/material.dart';
import 'package:health_symptoms/core/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.themeData(Brightness.light),
        darkTheme: AppTheme.themeData(Brightness.dark),
        home: const Scaffold(
          body: Center(
            child: Text("Hello World"),
          ),
        ));
  }
}
