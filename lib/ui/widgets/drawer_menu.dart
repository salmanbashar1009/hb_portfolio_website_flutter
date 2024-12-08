import 'package:flutter/material.dart';
import 'package:hb_website/ui/utils/route_logic.dart';
class DrawerMenu extends StatelessWidget {
   DrawerMenu({
    super.key,
  });

  RouteLogic routeLogic = RouteLogic();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 220,
      child: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Divider(),
          ListTile(
            onTap: (){
              routeLogic.scrollToSection(routeLogic.homeKey);
              Navigator.pop(context);

            },
            leading: const Icon(Icons.home_outlined),
            title: Text(
              'Home',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){
              routeLogic.scrollToSection(routeLogic.serviceKey);
              Navigator.pop(context);
            },
            leading: const Icon(Icons.home_outlined),
            title: Text(
              'Services',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){
              routeLogic.scrollToSection(routeLogic.skillKey);
              Navigator.pop(context);
            },
            leading: const Icon(Icons.cast_for_education),
            title: Text(
              'Skills',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){
              routeLogic.scrollToSection(routeLogic.projectKey);
              Navigator.pop(context);
            },
            leading: const Icon(Icons.account_tree_outlined),
            title: Text(
              'Projects',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: (){
              routeLogic.scrollToSection(routeLogic.contactKey);
              Navigator.pop(context);
            },
            leading: const Icon(Icons.phone),
            title: Text(
              'Contact',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}