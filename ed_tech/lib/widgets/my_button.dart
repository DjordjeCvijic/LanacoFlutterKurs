import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onButtonPress;
  final String buttonText;
  const MyButton(
      {super.key, required this.buttonText, required this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        onButtonPress();
      },
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: CustomColors.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textTheme.buttonMedium.copyWith(color: CustomColors.white),
          ),
        ),
      ),
    );
  }
}
