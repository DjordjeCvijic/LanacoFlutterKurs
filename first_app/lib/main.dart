import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen()
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("zdravo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            InkWell(
              onTap: () {
                _incrementCounter();
              },
              child: Container(
                height: 100,
                width: 200,
                color: Colors.blue[100],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Djordje"),
                          Gap(20),
                          Text("Cvijic"),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _incrementCounter();
                        },
                        child: const Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter();
              },
              child: const Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("count: ${_counter + 1}");
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.help),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
