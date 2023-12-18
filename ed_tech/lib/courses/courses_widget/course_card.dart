import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.imagePath,
    required this.duration,
    required this.category,
    required this.description,
    required this.price,
  });

  final String imagePath;
  final String duration;
  final String category;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: CustomColors.gray,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                imagePath,
                height: 194,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              Positioned(
                right: 16,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: CustomColors.secondary,
                  ),
                  child: Text('\$ $price'),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              duration,
              style: Theme.of(context).textTheme.paragraphMedium.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              category,
              style: Theme.of(context).textTheme.headingH4,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              description,
              style: Theme.of(context).textTheme.paragraphMedium,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
