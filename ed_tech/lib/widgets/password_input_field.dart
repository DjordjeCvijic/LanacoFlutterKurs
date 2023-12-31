import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController myController;
  const PasswordInputField({super.key, required this.myController});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.myController,
      obscureText: hidePassword,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
          child: SvgPicture.asset(
            CustomIcons.showPasswordIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
