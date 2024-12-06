import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/components/contact_section.dart';
import 'package:hb_website/ui/components/projects_section.dart';
import 'package:hb_website/ui/components/skills_section_desktop.dart';
import 'package:hb_website/ui/screens/introduction_section.dart';
import 'package:hb_website/ui/utils/launch_url.dart';

import '../utils/colorize_colors.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      primary: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.grey.withOpacity(0.1),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: IconButton(onPressed: (){
              goToUrl(facebookUrl);
            }, icon: FaIcon(FontAwesomeIcons.facebook,size: 20,)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(onPressed: (){
              goToUrl(linkedInUrl);
            }, icon:  FaIcon(FontAwesomeIcons.linkedin,size: 20,)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(onPressed: (){
              goToUrl(githubUrl);
            }, icon: FaIcon(FontAwesomeIcons.github,size: 20,)),
          ),
          const SizedBox(width: 16,)
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 220,
        child: ListView(
          children: [
            const SizedBox(height: 100,),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: Text('Home',style: Theme.of(context).textTheme.titleMedium,),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.cast_for_education),
              title: Text('Skills',style: Theme.of(context).textTheme.titleMedium,),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: Text('Projects',style: Theme.of(context).textTheme.titleMedium,),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Contact',style: Theme.of(context).textTheme.titleMedium,),
            ),
            const Divider(),
          ],
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
    );
  }
}
