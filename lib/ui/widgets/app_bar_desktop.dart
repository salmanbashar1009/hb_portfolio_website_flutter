import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_website/ui/components/contact_section.dart';
import 'package:hb_website/ui/components/desktop/nav_bar_button.dart';
import 'package:hb_website/ui/components/desktop/services_desktop.dart';
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
                    ColorizeAnimatedText('<HB>',
                        textStyle: GoogleFonts.monoton(textStyle: const TextStyle(fontSize: 40,fontWeight: FontWeight.w700)),
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
              const SizedBox(width: 35,),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: (){
                  goToUrl("https://drive.google.com/file/d/1hr7e5Z_2TA4SVv_Zuz0QGYfGwsA7S60f/view?usp=sharing");
                },
                child: Container(
                  width: 120,
                  height: 32,
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: FaIcon(
                          FontAwesomeIcons.download,
                          color: CupertinoColors.activeGreen,
                          size: 16,
                        ),
                      ),
                      Text("Resume",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.green),)
                    ],
                  ),
                ),
              ),
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
                    ServicesDesktop(),
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
