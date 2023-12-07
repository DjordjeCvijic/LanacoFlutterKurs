import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String text;
  final bool isSelected;
  const NavigationButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                isSelected ? CustomColors.primary : CustomColors.gray,
                BlendMode.srcIn),
          ),
          Text(
            text,
            style: textTheme.paragraphMedium.copyWith(
                color: isSelected ? CustomColors.primary : CustomColors.gray),
          )
        ],
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
