import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

import '/courses/courses_widget/course_card.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final categories = [
      '#CSS',
      '#UX',
      '#SWIFT',
      '#UI',
      '#CSS',
      '#UX',
      '#SWIFT',
      '#UI'
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: textTheme.paragraphLarge,
                    ),
                    Text(
                      'Juana Antonieta',
                      style: textTheme.headingH4,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: CustomColors.gray,
                        width: 1,
                      )),
                  child: const Icon(
                    Icons.notifications_none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 1,
                    color: CustomColors.gray,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 1,
                    color: CustomColors.gray,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Center(child: Text('Category:')),
                  ...categories.map(
                    (category) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Chip(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          label: Text(category),
                        ),
                      );
                    },
                  ).toList()
                ],
              ),
            ),
            const SizedBox(height: 20),
            const CourseCard(
              imagePath: CustomImages.loginImage,
              category: 'UX',
              duration: '3h 30 min',
              price: 50,
              description: 'Advanced mobile interface design',
            )
          ],
        ),
      ),
    );
  }
}
