import 'dart:io';

import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/main_provider.dart';
import '/helpers/constants.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localization = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Column(
        children: [
          Text(
            localization.settings,
            style: textTheme.headingH4,
            textAlign: TextAlign.center,
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(localization.dark,
                  style: Theme.of(context).textTheme.titleLarge!),
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
                localization.light,
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
          const Gap(40),
          Consumer<MainProvider>(
            builder: (_, mainProvider, __) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  onTap: () {
                    mainProvider.language = 'en';
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: mainProvider.language == 'en'
                          ? Colors.amber
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: const Text('ENGLISH'),
                  ),
                ),
                const Gap(20),
                InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  onTap: () {
                    mainProvider.language = 'sr';
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: mainProvider.language == 'sr'
                          ? Colors.amber
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: const Text('SRPSKI'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
