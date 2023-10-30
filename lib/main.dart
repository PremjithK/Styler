import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styler/config/theme.dart';
import 'package:styler/ui/dashboard/pages/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Styler',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const DashboardPage(),
    );
  }
}
