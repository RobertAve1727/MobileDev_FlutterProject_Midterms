import 'package:flutter/material.dart';
import 'package:flutter_application_midterms/course/course.dart';
import 'package:flutter_application_midterms/enrollment/enrollmentReview.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_midterms/provider/enrollmentState.dart';

class CourseSelection extends StatelessWidget {
  CourseSelection({super.key});

  // Hard-coded courses
  final List<Course> courses = [
    Course(
      id: 'SP Elec 1A',
      name: 'Web Development',
      credits: '3.0',
      instructor: 'Prof. Rodrick Bandalan',
    ),
    Course(
      id: 'CMP',
      name: 'Computing Math Prep',
      credits: '3.0',
      instructor: 'Ms. Lorna Miro',
    ),
    Course(
      id: 'Net2 11001',
      name: 'Networking 2',
      credits: '3.0',
      instructor: 'Prof. Patalita',
    ),
    Course(
      id: 'SP Elec 1B',
      name: 'Mobile App Development',
      credits: '3.0',
      instructor: 'Prof. Adhzleebee',
    ),
    Course(
      id: 'SE 10011',
      name: 'Software Engineering 1',
      credits: '3.0',
      instructor: 'Ms. Josephine Petralba',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Selection')),
      body: Consumer<EnrollmentState>(
        builder: (context, enrollment, child) {
          return ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              final course = courses[index];
              final isSelected = enrollment.course?.id == course.id;

              return ListTile(
                title: Text(course.name),
                subtitle: Text(
                  'Instructor: ${course.instructor} | Credits: ${course.credits}',
                ),
                trailing: isSelected
                    ? const Icon(Icons.check, color: Colors.green)
                    : null,
                onTap: () {
                  // Update the selected course in global state
                  enrollment.setCourse(course);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: Consumer<EnrollmentState>(
        builder: (context, enrollment, child) {
          return FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: enrollment.course != null
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnrollmentReview(),
                      ),
                    );
                  }
                : null, // disabled if no course selected
          );
        },
      ),
    );
  }
}
