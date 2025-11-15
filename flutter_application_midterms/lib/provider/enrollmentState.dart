import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/student/student.dart';
import 'package:flutter_application_midterms/course/course.dart';

class EnrollmentState with ChangeNotifier {
  Student? student;
  Course? course;

  void setStudent(Student newStudent) {
    student = newStudent;
    notifyListeners();
  }

  void setCourse(Course newCourse) {
    course = newCourse;
    notifyListeners();
  }
}
