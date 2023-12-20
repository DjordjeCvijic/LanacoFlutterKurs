import 'dart:io';

import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '/main_provider.dart';
import '/widgets/my_button.dart';
import '/helpers/constants.dart';
import '/settings/settings_provider.dart';
import '/widgets/simple_input_field.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettignProvider>(
      context,
      listen: false,
    );
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
                  "Settings",
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
              builder: (context, snaphot) => snaphot.connectionState ==
                      ConnectionState.waiting
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dark',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(10),
              if (Platform.isAndroid)
                Consumer<MainProvider>(
                  builder: (_, mainProvider, __) => Switch(
                    value: mainProvider.inLightMode,
                    onChanged: (value) {
                      mainProvider.inLightMode = value;
                    },
                  ),
                ),
              if (Platform.isIOS)
                Consumer<MainProvider>(
                  builder: (_, mainProvider, __) => CupertinoSwitch(
                    value: mainProvider.inLightMode,
                    onChanged: (value) {
                      mainProvider.inLightMode = value;
                    },
                  ),
                ),
              const Gap(10),
              Text(
                'Light',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),

          // ElevatedButton(
          //   onPressed: () async {
          //     //iOS Dialog
          //     if (Platform.isIOS) {
          //       showCupertinoDialog(
          //         context: context,
          //         builder: (context) => CupertinoAlertDialog(
          //           title: const Text('title'),
          //           content: const Text('content'),
          //           actions: <Widget>[
          //             CupertinoDialogAction(
          //               child: const Text('Cancel'),
          //               onPressed: () => Navigator.of(context).pop(false),
          //             ),
          //             CupertinoDialogAction(
          //               child: const Text('Ok'),
          //               onPressed: () => Navigator.of(context).pop(true),
          //             ),
          //           ],
          //         ),
          //       );
          //     } else {
          //       //Async/Await vs Then/Catch approach
          //       var value = await showDialog(
          //         context: context,
          //         builder: (context) {
          //           return AlertDialog(
          //             actions: [
          //               ElevatedButton(
          //                 child: const Text('Odustani'),
          //                 onPressed: () => Navigator.of(context).pop(false),
          //               ),
          //               ElevatedButton(
          //                 child: const Text('Nastavi'),
          //                 onPressed: () => Navigator.of(context).pop(true),
          //               ),
          //             ],
          //             title: const Text('Alert Dialog'),
          //             content: const Text(
          //               'Da li ste sigurni da zelite ... ?',
          //             ),
          //           );
          //         },
          //       );
          //       // .then(
          //       //   (value) {
          //       //     log('Vrijednost: $value');
          //       //     if (!value) return;
          //       //     //Logika za odredjenu akciju, koju je korisnik odobrio!
          //       //   },
          //       // );

          //       log('Vrijednost: $value');
          //     }
          //   },
          //   child: const Text('Show Dialog'),
          // )
        ],
      ),
    );
  }
}
