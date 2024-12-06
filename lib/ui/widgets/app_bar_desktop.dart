import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hb_website/ui/components/contact_section.dart';
import 'package:hb_website/ui/components/desktop/nav_bar_button.dart';
import 'package:hb_website/ui/components/projects_section.dart';
import 'package:hb_website/ui/components/skills_section_desktop.dart';
import 'package:hb_website/ui/screens/introduction_section.dart';
import 'package:hb_website/ui/utils/launch_url.dart';

import '../utils/colorize_colors.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            elevation: 4,
            title: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: SizedBox(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText('<H.B>',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                        speed: const Duration(seconds: 3)),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ),
            actions: [
              NavBarButton(title: 'Home', onTap: () {}),
              NavBarButton(title: 'Skills', onTap: () {}),
              NavBarButton(title: 'Projects', onTap: () {}),
              NavBarButton(title: 'Contact', onTap: () {}),
              const SizedBox(
                width: 100,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  children: [
                    IntroductionSection(),
                    SizedBox(
                      height: 75,
                    ),
                    SkillsSectionDesktop(),
                    SizedBox(
                      height: 75,
                    ),
                    ProjectsSection(),
                    SizedBox(
                      height: 75,
                    ),
                    ContactSection(),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
