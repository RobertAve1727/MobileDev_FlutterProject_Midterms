import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/student/student.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';

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
        title: Text(
          "Student Information Form",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: firstNameController,
            decoration: InputDecoration(labelText: 'First Name'),
          ),
          TextField(
            controller: lastNameController,
            decoration: InputDecoration(labelText: 'Last Name'),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: studIdController,
            decoration: InputDecoration(labelText: 'Student ID'),
          ),
        ],
      ),
    );
  }
}
