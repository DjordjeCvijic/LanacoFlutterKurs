import 'package:ed_tech/helpers/constants.dart';
import 'package:ed_tech/settings/settings_provider.dart';
import 'package:ed_tech/widgets/my_button.dart';
import 'package:ed_tech/widgets/simple_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettignProvider>(
      context,
      listen: false,
    );
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        //back button and title
        Row(
          children: [
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
        const Gap(60),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: const EdgeInsets.fromLTRB(24, 50, 24, 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SimpleInputField(
                      myController: settingsProvider.newNameController,
                      hintText: "Enter new Name",
                    ),
                    const Gap(20),
                    MyButton(
                      buttonText: "Save",
                      onButtonPress: () {
                        Navigator.of(context).pop();
                        settingsProvider.saveNewName();
                      },
                    )
                  ],
                ),
              ),
            );
          },
          child: FutureBuilder(
            future: settingsProvider.fetchDate(),
            builder: (context, snaphot) =>
                snaphot.connectionState == ConnectionState.waiting
                    ? const CircularProgressIndicator()
                    : Consumer<SettignProvider>(
                        builder: (context, provider, child) => Container(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: CustomColors.gray),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(CustomIcons.profileIcon),
                              const Gap(12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name",
                                      style: textTheme.headingH4,
                                    ),
                                    Text(settingsProvider.name,
                                        style: textTheme.paragraphMedium),
                                  ],
                                ),
                              ),
                              const Gap(12),
                              SvgPicture.asset(CustomIcons.rightArrowIcon),
                            ],
                          ),
                        ),
                      ),
          ),
        ),
        const Gap(60),
      ],
    );
  }
}
