import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';

class EnrollmentReview extends StatelessWidget {
  const EnrollmentReview({super.key});

  @override
  Widget build(BuildContext context) {
    // Access provider values (listen: true to update UI if data changes)
    final enrollment = Provider.of<EnrollmentState>(context);

    final student = enrollment.student;
    final course = enrollment.course;

    return Scaffold(
      appBar: AppBar(title: const Text("Enrollment Review")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            student == null
                ? const Text("No student data found.")
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name: ${student.firstName}"),
                      Text("Last Name: ${student.lastName}"),
                      Text("Email: ${student.email}"),
                      Text("Student ID: ${student.studentID}"),
                    ],
                  ),

            const SizedBox(height: 30),

            const Text(
              "Course Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            course == null
                ? const Text("No course data found.")
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Course Code: ${course.id}"),
                      Text("Course Title: ${course.name}"),
                      Text("Credits: ${course.credits}"),
                      Text("Instructor: ${course.instructor}"),
                    ],
                  ),

            const Spacer(),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Enrollment Submitted!")),
                  );
                },
                child: const Text("Confirm Enrollment"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
