import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/components/contact_section.dart';
import 'package:hb_website/ui/components/mobile/service_section_mobile.dart';
import 'package:hb_website/ui/components/projects_section.dart';
import 'package:hb_website/ui/components/skills_section_desktop.dart';
import 'package:hb_website/ui/screens/introduction_section.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/utils/route_logic.dart';
import 'package:hb_website/ui/widgets/drawer_menu.dart';


class AppBarMobile extends StatefulWidget {
   const AppBarMobile({super.key});

  @override
  State<AppBarMobile> createState() => _AppBarMobileState();
}

class _AppBarMobileState extends State<AppBarMobile> {

  final ScrollController _scrollController = ScrollController();
  RouteLogic routeLogic = RouteLogic();


  void _scrollToTop() {
    _scrollController.animateTo(
      0.0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut,);
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        primary: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.grey.withAlpha(25),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: IconButton(
                  onPressed: () {
                    goToUrl(facebookUrl);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: IconButton(
                  onPressed: () {
                    goToUrl(linkedInUrl);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: IconButton(
                  onPressed: () {
                    goToUrl(githubUrl);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 20,
                  )),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
        drawer:   DrawerMenu(),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            child:   Column(
              children: [
                IntroductionSection(key: routeLogic.homeKey,),
                const SizedBox(
                  height: 75,
                ),
                ServiceSectionMobile(key: routeLogic.serviceKey,),
                const SizedBox(
                  height: 75,
                ),
                ProjectsSection(key: routeLogic.projectKey ,),

                const SizedBox(
                  height: 75,
                ),
                SkillsSectionDesktop(key: routeLogic.skillKey),
                const SizedBox(
                  height: 75,
                ),
                ContactSection(key: routeLogic.contactKey,),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _scrollToTop();
          },
          shape: const CircleBorder(),
          backgroundColor: Colors.lightBlueAccent,
          child: const FaIcon(FontAwesomeIcons.arrowUp,color: Colors.white,size: 16,),
        ),
      );
    }
   }




