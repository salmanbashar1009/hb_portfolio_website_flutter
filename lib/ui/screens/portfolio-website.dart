import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_website/ui/components/desktop/contact_section.dart';
import 'package:hb_website/ui/components/desktop/nav_bar_button.dart';
import 'package:hb_website/ui/components/desktop/projects_section.dart';
import 'package:hb_website/ui/components/desktop/skills_section.dart';
import 'package:hb_website/ui/screens/introduction_section.dart';



class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H. Bashar Portfolio Website',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            elevation: 2,
            title: const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                '<H.B>',
                style: TextStyle(color: Colors.black87,fontSize: 45,fontWeight: FontWeight.w700),
              ),
            ),
            actions: [
              NavBarButton(title: 'Home', onTap: () {}),
              NavBarButton(title: 'Skills', onTap: () {}),
              NavBarButton(title: 'Projects', onTap: () {}),
              NavBarButton(title: 'Contact', onTap: () {}),
              SizedBox(width: 100,)
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
                    SizedBox(height: 75,),
                    SkillsSection(),
                    SizedBox(height: 75,),
                    ProjectsSection(),
                    SizedBox(height: 75,),
                    ContactSection(),
                    SizedBox(height: 100,)
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










