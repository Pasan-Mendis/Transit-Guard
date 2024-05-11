import 'package:flutter/material.dart';
// import 'assigning_vehicle.dart';
// import 'parent_report.dart';
import 'create_student.dart';
import 'driver_notification.dart';
import 'parent_notification.dart';
import 'parent_report.dart';
import 'reg_driver.dart';
import 'report_screen.dart';
// import 'registration_page.dart';
// import 'report_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(),
      themeMode: ThemeMode.dark,
      home: const ParentReportPage(),
    );
  }
}
