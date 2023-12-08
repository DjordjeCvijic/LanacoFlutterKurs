import 'package:flutter/material.dart';

class SimpleInputField extends StatelessWidget {
  final TextEditingController myController;
  final String hintText;
  const SimpleInputField({
    super.key,
    required this.myController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
