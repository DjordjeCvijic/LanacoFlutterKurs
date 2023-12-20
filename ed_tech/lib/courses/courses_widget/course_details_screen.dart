import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/courses/courses_provider.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({
    super.key,
    required this.name,
    required this.description,
  });

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CoursesProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
      ),
      body: Center(
        child: FutureBuilder(
          future: provider.getUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Error!'));
            }

            return Column(
              children: [
                const SizedBox(height: 40),
                Text("Course Category: $name"),
                const SizedBox(height: 20),
                Text("Course Description: $description"),
                const SizedBox(height: 20),
                const Text('Students'),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: provider.studentsList
                        .map((student) => StudentCard(student: student))
                        .toList(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({
    super.key,
    required this.student,
  });
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue,
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Text(student.username),
            Text(student.name),
            Row(
              children: [
                const Text('ADRESA: '),
                Text(student.address.city),
                const SizedBox(width: 4),
                const Text('ZIP CODE: '),
                Text(student.address.zipCode ?? ' NO ZIP CODE'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
