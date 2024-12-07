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
import 'package:hb_website/ui/widgets/primary_button.dart';


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
                child: Text(
                  "<HB>",
                  style: GoogleFonts.monoton(
                      textStyle:  TextStyle(
                          fontSize: 40, fontWeight: FontWeight.w700,color: Colors.black.withOpacity(0.6))),
                ),
              ),
            ),
            actions: [
              NavBarButton(title: 'Home', onTap: () {}),
              NavBarButton(title: 'Skills', onTap: () {}),
              NavBarButton(title: 'Projects', onTap: () {}),
              NavBarButton(title: 'Contact', onTap: () {}),
              const SizedBox(
                width: 35,
              ),
               PrimaryButton(title: "RESUME",color: Colors.green,icon: const FaIcon(
                FontAwesomeIcons.download,
                color: CupertinoColors.activeGreen,
                size: 16,
              ),onTap:(){
                 const url = "https://drive.google.com/file/d/1hr7e5Z_2TA4SVv_Zuz0QGYfGwsA7S60f/view?usp=sharing";
                goToUrl(url);
              } ,),
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


