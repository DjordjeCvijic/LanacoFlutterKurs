import 'package:ed_tech/app_navigation/app_navigator_provider.dart';
import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_navigation_widgets/navigation_button.dart';

class AppNavigator extends StatelessWidget {
  AppNavigator({
    Key? key,
  }) : super(key: key);
  static const routeName = "/app-navigator";

  final Map<int, dynamic> listOfScreens = {
    0: const Center(
      child: Text("Courses "),
    ),
    1: const Center(
      child: Text("Profile "),
    ),
    2: const Center(
      child: Text("Settings "),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNavigatorProvider>(
      builder: (context, appNavigatorProvider, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
