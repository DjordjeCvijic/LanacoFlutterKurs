import 'package:ed_tech/settings/tabs/profile_tab.dart';
import 'package:ed_tech/settings/tabs/settings_tab.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              padding: EdgeInsets.symmetric(vertical: 20),
              tabs: [
                Icon(Icons.account_circle_rounded, size: 30),
                Icon(
                  Icons.settings,
                  size: 30,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ProfileTab(),
                  SettingsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
