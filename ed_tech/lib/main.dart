import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '/helpers/custom_themes.dart';
import '/login/login_provider.dart';
import '/login/login_screen.dart';
import '/main_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MainProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    context.read<MainProvider>().getPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('sr'),
      ],
      locale: context.watch<MainProvider>().language == 'sr'
          ? const Locale('sr')
          : const Locale('en'),
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<MainProvider>().inLightMode
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
      home: ChangeNotifierProvider(
        create: (_) => LoginProvider(),
        child: const LoginScreen(),
      ),
    );
  }
}
