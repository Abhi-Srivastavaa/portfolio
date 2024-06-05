import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback onTap;
  const SiteLogo({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          "AK",
          style: TextStyle(
            color: CustomColor.yellowPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
