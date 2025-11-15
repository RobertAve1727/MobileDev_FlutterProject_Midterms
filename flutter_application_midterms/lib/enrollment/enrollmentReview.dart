import 'package:flutter/material.dart';

class EnrollmentReview extends StatefulWidget {
  const EnrollmentReview({super.key});

  @override
  State<EnrollmentReview> createState() => EnrollmentReviewState();
}

class EnrollmentReviewState extends State<EnrollmentReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enrollment Review",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Text(
          "Review your enrollment details here.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
