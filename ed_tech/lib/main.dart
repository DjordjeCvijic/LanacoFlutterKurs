import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      debugShowCheckedModeBanner: false,
      theme: context.watch<MainProvider>().inLightMode
          ? CustomThemes.lightTheme
          : CustomThemes.darkTheme,
      home: ChangeNotifierProvider(
        create: (_) => LoginProvider(),
        child: const LoginScreen(),
      ),
    );
  }
}
