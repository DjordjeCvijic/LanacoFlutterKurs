import 'package:first_app/helpers/dummy_data.dart';
import 'package:first_app/models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PersonCard extends StatelessWidget {
  final PersonModel person;
  const PersonCard({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(person.firstName),
              const Gap(4),
              Text(person.lastName),
            ],
          ),
          Row(
            children: [
              Text(person.gender.name),
              const Gap(4),
              const Spacer(),
              person.gender == GenderEnum.male
                  ? const Icon(Icons.male)
                  : const Icon(Icons.female)
            ],
          ),
          Text(person.email),
          if (person.phoneNumber != null) Text(person.phoneNumber!)
        ],
      ),
    );
  }
}
