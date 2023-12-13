import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final VoidCallback onOptionTap;
  final String text;
  const ProfileOption({
    super.key,
    required this.onOptionTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        onOptionTap();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        decoration: BoxDecoration(
          border: Border.all(color: CustomColors.gray),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textTheme.headingH4,
        ),
      ),
    );
  }
}
