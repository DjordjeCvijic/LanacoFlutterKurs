import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback onButtonPress;
  final String buttonText;
  const MyTextButton(
      {super.key, required this.buttonText, required this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        onButtonPress();
      },
      child: Text(
        buttonText,
        style: textTheme.buttonSmall.copyWith(color: CustomColors.darkGray),
      ),
    );
  }
}
