import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/course/inputs.dart';
import 'package:flutter_application_midterms/course/courseSelection.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});

  @override
  State<StudentInfo> createState() => StudentInfoState();
}

class StudentInfoState extends State<StudentInfo> {
  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final studIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Information Form",
          style: TextStyle(fontSize: 20),
        ),
      ),

      // ✅ FAB is correct here
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          // Validate fields before navigating
          if (formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CourseSelection()),
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
                input1: firstNameController,
                input2: lastNameController,
                input3: emailController,
                input4: studIdController,
                label1: 'First Name',
                label2: 'Last Name',
                label3: 'Email',
                label4: 'Student ID',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
