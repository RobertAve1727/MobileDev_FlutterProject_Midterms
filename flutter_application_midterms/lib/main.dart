import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';
import 'package:flutter_application_midterms/student/studentInfo.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => EnrollmentState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduBridge Enrollment',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/studentInfo',
      routes: {'/studentInfo': (context) => const StudentInfo()},
    );
  }
}
