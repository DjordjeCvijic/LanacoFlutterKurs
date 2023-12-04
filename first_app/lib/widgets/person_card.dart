import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '/screens/user_info.dart';
import '/helpers/dummy_data.dart';
import '/models/person_model.dart';

class PersonCard extends StatelessWidget {
  final PersonModel person;
  const PersonCard({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return UserInfo(
                firstName: person.firstName,
                lastName: person.lastName,
                email: person.email,
                gender: person.gender,
                phoneNumber: person.phoneNumber,
                photo: person.photo,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 10),
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                'https://picsum.photos/250?image=9',
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
            ),
          ],
        ),
      ),
    );
  }
}
