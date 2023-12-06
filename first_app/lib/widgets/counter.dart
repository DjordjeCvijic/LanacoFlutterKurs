import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print("Pokrenut build");
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print("Oduzmi");
              setState(() {
                count = count - 1;
              });

              print("nova vrijednost:" + count.toString());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: const Icon(Icons.exposure_minus_1),
            ),
          ),
          const Gap(20),
          Text(
            count.toString(),
            style: textTheme.titleLarge,
          ),
          const Gap(20),
          InkWell(
            onTap: () {
              print("Dodaj");
              setState(() {
                count = count + 1;
              });

              print("nova vrijednost:" + count.toString());
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: const Icon(Icons.plus_one),
            ),
          ),
        ],
      ),
    );
  }
}
