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
import 'package:hb_website/ui/utils/route_logic.dart';
import 'package:hb_website/ui/widgets/primary_button.dart';


class AppBarDesktop extends StatefulWidget {
   const AppBarDesktop({super.key});

  @override
  State<AppBarDesktop> createState() => _AppBarDesktopState();
}

class _AppBarDesktopState extends State<AppBarDesktop> {

  final ScrollController _scrollController = ScrollController();
  RouteLogic routeLogic = RouteLogic();


  void _scrollToTop() {
    _scrollController.animateTo(
      0.0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 4,
            title: Padding(
              padding: const EdgeInsets.only(left: 100, ),
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
              NavBarButton(title: 'Home', onTap: () {routeLogic.scrollToSection(routeLogic.homeKey);}),
              NavBarButton(title: 'Services', onTap: () {routeLogic.scrollToSection(routeLogic.serviceKey);}),
              NavBarButton(title: 'Projects', onTap: () {routeLogic.scrollToSection(routeLogic.projectKey);}),
              NavBarButton(title: 'Skills', onTap: () {routeLogic.scrollToSection(routeLogic.skillKey);}),
              NavBarButton(title: 'Contact', onTap: () {routeLogic.scrollToSection(routeLogic.contactKey);}),
              const SizedBox(
                width: 35,
              ),
               PrimaryButton(title: "RESUME",icon:  FaIcon(
                FontAwesomeIcons.download,
                color: CupertinoColors.white,
                size: 16,
              ),onTap:(){
                 const url = "https://drive.google.com/file/d/1sNkiYZp1l4hLq3JTCjzWoULM4LTFUrRU/view?usp=sharing";
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
                child:  Column(
                  children: [
                    IntroductionSection(key: routeLogic.homeKey,),
                    const SizedBox(
                      height: 75,
                    ),
                    ServicesDesktop(key:routeLogic.serviceKey),
                    const SizedBox(
                      height: 75,
                    ),
                    ProjectsSection(key: routeLogic.projectKey),
                    const SizedBox(
                      height: 75,
                    ),
                    SkillsSectionDesktop(key: routeLogic.skillKey),
                    const SizedBox(
                      height: 75,
                    ),
                    ContactSection(key: routeLogic.contactKey),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
        child: const FaIcon(FontAwesomeIcons.arrowUp,color: Colors.white,size: 16,),
        onPressed: (){
          _scrollToTop();
        },
      ),
    );
  }
}


