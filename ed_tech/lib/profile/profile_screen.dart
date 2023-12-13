import 'dart:io';

import 'package:ed_tech/helpers/common_methods.dart';
import 'package:ed_tech/helpers/constants.dart';
import 'package:ed_tech/profile/profile_option.dart';
import 'package:ed_tech/profile/profile_provider.dart';
import 'package:ed_tech/widgets/my_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider =
        Provider.of<ProfileProvider>(context, listen: false);
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Column(
        children: [
          //back button and title
          Row(
            children: [
              SvgPicture.asset(CustomIcons.backButton),
              Expanded(
                child: Text(
                  "Profile",
                  style: textTheme.headingH4,
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(40),
            ],
          ),
          const Gap(48),
          //profile photo
          Consumer<ProfileProvider>(
            builder: (context, provider, child) =>
                profileProvider.selectedPofilePhoto == null
                    ? Image.asset(
                        CustomImages.profilePhoto,
                      )
                    : Container(
                        height: 150,
                        width: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(170)),
                        ),
                        child: Image.file(
                          File(profileProvider.selectedPofilePhoto!.path),
                          fit: BoxFit.cover,
                        ),
                      ),
          ),

          const Gap(32),
          //Options:
          ProfileOption(
            onOptionTap: () {
              // profileProvider.pickProfilePhoto();
              showModalBottomSheet(
                context: context,
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pop(); //da zatvorimo bottom sheet opcije
                        profileProvider.pickProfilePhoto(ImageSource.camera);
                      },
                      leading: const Icon(Icons.camera),
                      title: const Text("Camera"),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                        profileProvider.pickProfilePhoto(ImageSource.gallery);
                      },
                      leading: const Icon(Icons.storage),
                      title: const Text("Gallery"),
                    )
                  ],
                ),
              );
            },
            text: 'Chenge Photo',
          ),
          ProfileOption(
            onOptionTap: () {
              print("'Your Courses");
            },
            text: 'Your Courses',
          ),
          ProfileOption(
            onOptionTap: () {
              CommonMethod.callMethodWithLoadingDialog(
                message: "Sacekajte trenutak",
                context: context,
                callback: () async {
                  await Future.delayed(Duration(seconds: 5));
                },
                onFinished: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Neka akcija poslije dohvatanja podataka"),
                    ),
                  );
                },
              );
            },
            text: 'Saved',
          ),
          ProfileOption(
            onOptionTap: () {
              print("Payment");
            },
            text: 'Payment',
          ),
          //logout button
          MyTextButton(
            buttonText: "Log Out",
            onButtonPress: () {
              print("klik na log out");
            },
          )
        ],
      ),
    );
  }
}
