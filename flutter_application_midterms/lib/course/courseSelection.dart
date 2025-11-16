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
            padding: const EdgeInsets.all(12),
            itemCount: courses.length + 1, // +1 for the button
            itemBuilder: (context, index) {
              if (index < courses.length) {
                final course = courses[index];
                final isSelected = enrollment.course?.id == course.id;

                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      enrollment.setCourse(course);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu_book,
                            size: 32,
                            color: Color(0xFF228B22),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  course.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Instructor: ${course.instructor}",
                                  style: const TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Credits: ${course.credits}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (isSelected)
                            const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 28,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                // This is the button under the last course
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF228B22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: enrollment.course != null
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EnrollmentReview(),
                                ),
                              );
                            }
                          : null,
                      child: const Text(
                        "Select Course",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
