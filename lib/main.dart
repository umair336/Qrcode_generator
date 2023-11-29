import 'package:flutter/material.dart';
import 'package:flutter_application_2/constraints/constraints.dart';
import 'package:flutter_application_2/privacy_popup.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: Themes().lightTheme,
      // darkTheme: Themes().darkTheme,
      debugShowCheckedModeBanner: false,
      home: PrivacyPopUp(),
    );
  }
}