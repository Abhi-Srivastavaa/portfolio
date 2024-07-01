import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.projectUtils});
  final ProjectUtils projectUtils;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              projectUtils.subtitle,
              style: const TextStyle(
                  fontSize: 10, color: CustomColor.whiteSecondary),
            ),
          ),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "AVailable on:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (projectUtils.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context
                            .callMethod("open", [projectUtils.androidLink]);
                      },
                      child: Image.asset(
                        "assets/android_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.iosLink]);
                      },
                      child: Image.asset(
                        "assets/ios_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (projectUtils.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.webLink]);
                      },
                      child: Image.asset(
                        "assets/web_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
