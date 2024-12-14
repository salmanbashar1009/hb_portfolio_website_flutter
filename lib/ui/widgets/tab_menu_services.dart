import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/widgets/primary_button.dart';

class TabMenuServices extends StatelessWidget {
  const TabMenuServices({super.key, required this.icon, required this.title, required this.description, required this.onTop, required this.imageUrl});
  
  final FaIcon icon;
  final String title;
  final String description;
  final VoidCallback onTop;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(height: 30,),
              Text(title,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
              const SizedBox(height: 20,),
              SizedBox(width:390,child: Text(description,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
              const SizedBox(height: 40,),
              PrimaryButton(title: "Get Started", icon: const FaIcon(FontAwesomeIcons.arrowRight,size: 14,color: Colors.white,), onTap: onTop)
            ],

          ),
          const SizedBox(width: 20,),
          SizedBox(
            width: 300,
            height: 350,
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
