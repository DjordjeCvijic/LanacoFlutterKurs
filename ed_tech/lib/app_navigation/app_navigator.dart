import 'package:ed_tech/app_navigation/app_navigator_provider.dart';
import 'package:ed_tech/courses/courses_provider.dart';
import 'package:ed_tech/courses/courses_screen.dart';
import 'package:ed_tech/helpers/constants.dart';
import 'package:ed_tech/profile/profile_provider.dart';
import 'package:ed_tech/profile/profile_screen.dart';
import 'package:ed_tech/settings/settings_provider.dart';
import 'package:ed_tech/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_navigation_widgets/navigation_button.dart';

class AppNavigator extends StatelessWidget {
  AppNavigator({
    Key? key,
  }) : super(key: key);

  final Map<int, dynamic> listOfScreens = {
    0: ChangeNotifierProvider(
      create: (_) => CoursesProvider(),
      child: const CoursesScreen(),
    ),
    1: ChangeNotifierProvider(
      create: (_) => ProfileProvider(),
      child: const ProfileScreen(),
    ),
    2: ChangeNotifierProvider(
      create: (_) => SettignProvider(),
      child: const SettingsScreen(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNavigatorProvider>(
      builder: (context, appNavigatorProvider, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: listOfScreens.entries
              .elementAt(appNavigatorProvider.currentScreenIndex)
              .value,
        ),
        bottomNavigationBar: Container(
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(color: CustomColors.gray),
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: NavigationButton(
                    text: "Courses",
                    icon: CustomIcons.coursesNavigationIcon,
                    isSelected: appNavigatorProvider.currentScreenIndex == 0,
                    onTap: () {
                      appNavigatorProvider.changeScreen(0);
                    },
                  ),
                ),
                Expanded(
                  child: NavigationButton(
                    text: "Profile",
                    icon: CustomIcons.profileNavigationIcon,
                    isSelected: appNavigatorProvider.currentScreenIndex == 1,
                    onTap: () {
                      appNavigatorProvider.changeScreen(1);
                    },
                  ),
                ),
                Expanded(
                  child: NavigationButton(
                    text: "Setting",
                    icon: CustomIcons.settingNavigationIcon,
                    isSelected: appNavigatorProvider.currentScreenIndex == 2,
                    onTap: () {
                      appNavigatorProvider.changeScreen(2);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
