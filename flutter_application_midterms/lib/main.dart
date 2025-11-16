import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';
import 'package:flutter_application_midterms/student/studentInfo.dart';
import 'package:flutter_application_midterms/course/courseSelection.dart';
import 'package:flutter_application_midterms/enrollment/enrollmentReview.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/studentInfo',
      routes: {
        '/studentInfo': (context) => const StudentInfo(),
        '/courseSelection': (context) => CourseSelection(),
        '/enrollmentReview': (context) => const EnrollmentReview(),
      },
    );
  }
}
