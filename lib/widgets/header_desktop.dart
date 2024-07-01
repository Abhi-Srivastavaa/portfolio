import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/navbar_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  final Function(int) onNavViewTaop;
  HeaderDesktop({super.key, required this.onNavViewTaop});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: () {}),
          const Spacer(),
          for (int i = 0; i < navBarTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {
                  onNavViewTaop(i);
                },
                child: Text(
                  navBarTitle[i].toString(),
                  style: const TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
