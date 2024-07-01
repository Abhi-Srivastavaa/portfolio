import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            padding: const EdgeInsets.all(5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 107, 107, 107)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              leading: Image.asset(
                platformItems[i]["img"],
                width: 26,
              ),
              title: Text(
                platformItems[i]["title"],
              ),
            ),
          )

        //Skills
        ,
        const SizedBox(
          height: 50,
        ),
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                backgroundColor: CustomColor.bgLight2,
              )
          ],
        )
      ],
    );
  }
}
