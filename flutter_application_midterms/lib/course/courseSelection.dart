import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/enrollment/enrollmentReview.dart';
import 'package:flutter_application_midterms/course/inputs.dart';

class CourseSelection extends StatefulWidget {
  const CourseSelection({super.key});

  @override
  State<CourseSelection> createState() => CourseSelectionState();
}

class CourseSelectionState extends State<CourseSelection> {
  final formKey = GlobalKey<FormState>();
  final courseCodeController = TextEditingController();
  final courseTitleController = TextEditingController();
  final instructorController = TextEditingController();
  final scheduleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course Selection Form",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          // Validate fields before navigating
          if (formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnrollmentReview()),
            );
          } else {
            // Show message if validation fails
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Please fill out all required fields."),
              ),
            );
          }
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Inputs(
                input1: courseCodeController,
                input2: courseTitleController,
                input3: instructorController,
                input4: scheduleController,
                label1: 'Course Code',
                label2: 'Course Title',
                label3: 'Instructor',
                label4: 'Schedule',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
