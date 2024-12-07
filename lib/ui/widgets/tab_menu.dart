import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabMenuItem extends StatelessWidget {
  const TabMenuItem({super.key, required this.icon, required this.title});
  final FaIcon icon;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 10,),
          Text(title,style: Theme.of(context).textTheme.titleMedium)
        ],
      ),
    );
  }
}
