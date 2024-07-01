import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/contact_section_desktop.dart';
import 'package:my_portfolio/widgets/contact_section_mobile.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final scrollController = ScrollController();

    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavViewTaop: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                //main

                SizedBox(
                  key: navBarKeys.first,
                ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile()

                //Skills
                ,

                Container(
                  key: navBarKeys[1],
                  color: CustomColor.bgLight1,
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    children: [
                      const Text(
                        'What i can do',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile()
                    ],
                  ),
                ), //Projects
                // Projects & Hobby
                ProjectsSection(
                  key: navBarKeys[2],
                ),
                //Contact
                if (constraints.maxWidth >= kMedDesktopWidth)
                  ContactSectionDesktop(
                    key: navBarKeys[3],
                  )
                else
                  ContactSectionMobile(
                    key: navBarKeys[3],
                  )
              ],
            ),
          )),
    );
  }

  void scrollToSection(int navIndex) {
    final keys = navBarKeys[navIndex];

    Scrollable.ensureVisible(
      keys.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
