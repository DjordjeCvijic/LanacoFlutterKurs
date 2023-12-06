import 'package:first_app/helpers/constants.dart';
import 'package:first_app/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'package:first_app/helpers/dummy_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.phoneNumber,
    this.photo,
  });

  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final GenderEnum gender;
  final String? photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('$firstName $lastName'),
        backgroundColor: Colors.amber,
        shadowColor: Colors.black,
        elevation: 7,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: Navigator.of(context).pop,
            // onPressed: () => Navigator.of(context).pop(),
            // onPressed: () {
            //   Navigator.of(context).pop();
            // },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.network(photo ?? 'https://picsum.photos/250?image=20'),
            const SizedBox(height: 30),
            ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: SvgPicture.asset(CustomIcons.email),
              title: Text(email),
              tileColor: Colors.grey,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: SvgPicture.asset(
                CustomIcons.gender,
                height: 30,
                width: 30,
              ),
              title: Text(gender.name),
              tileColor: Colors.grey,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: SvgPicture.asset(CustomIcons.phone),
              title: Text(phoneNumber ?? 'Nema broja telefona'),
              tileColor: Colors.grey,
            ),
            const Gap(30),
            Counter()
          ],
        ),
      ),
    );
  }
}
