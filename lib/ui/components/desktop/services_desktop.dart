import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/widgets/primary_button.dart';
import 'package:hb_website/ui/widgets/service_tab_bar.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(30),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Available Services',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 400,
                  child: Text(
                      "a comprehensive suite of cutting-edge services to meet the diverse needs of our clients.",
                  softWrap: true,
                  style: Theme.of(context).textTheme.titleMedium)
              ),
              PrimaryButton(title: "Explore",color: Colors.black,icon: const FaIcon(
                FontAwesomeIcons.explosion,
                color: Colors.orangeAccent,
                size: 16,
              ),onTap:(){
                // const url = "https://drive.google.com/file/d/1hr7e5Z_2TA4SVv_Zuz0QGYfGwsA7S60f/view?usp=sharing";
                // goToUrl(url);
              } ,),

            ],
          ),
          const SizedBox(height: 30,),
          const ServiceTabBar()
        ],
      ),
    );
  }
}
