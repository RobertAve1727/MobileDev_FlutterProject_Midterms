import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/course/course.dart';
import 'package:flutter_application_midterms/enrollment/enrollmentReview.dart';
import 'package:flutter_application_midterms/course/inputs.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';

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
  final creditsController = TextEditingController();

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
            if (formKey.currentState!.validate()) {
              Provider.of<EnrollmentState>(context, listen: false).setCourse(
                Course(
                  id: courseCodeController.text,
                  name: courseTitleController.text,
                  credits: creditsController.text,
                  instructor: instructorController.text,
                ),
              );
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
                input3: creditsController,
                input4: instructorController,
                label1: 'Course Code',
                label2: 'Course Title',
                label3: 'Credits',
                label4: 'Instructor',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
