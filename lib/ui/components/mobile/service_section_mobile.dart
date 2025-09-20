import 'package:flutter/material.dart';
import 'package:hb_website/ui/widgets/service_card_mobile.dart';

class ServiceSectionMobile extends StatelessWidget {
  const ServiceSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Services",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 40,
        ),
        ServiceCardMobile(
          title: "WEB DEVELOPMENT",
          description: "Our web development service creates responsive, user-friendly websites tailored to your business needs.",
          imageUrl:  "https://cdn.pixabay.com/photo/2019/10/09/07/28/development-4536630_640.png",
        ),
        SizedBox(
          height: 35,
        ),
        ServiceCardMobile(
          title: " APP DEVELOPMENT",
          description: "We create intuitive, high-performance apps tailored to your business needs, ensuring a seamless user experience.",
          imageUrl:  "https://static.vecteezy.com/system/resources/previews/029/320/017/non_2x/web-development-mobile-app-app-ai-generated-free-png.png",
        ),
        SizedBox(
          height: 35,
        ),
        ServiceCardMobile(
          title: "GRAPHIC DESIGN",
          description: "We provide custom graphics, branding, and marketing materials to help you stand out.",
          imageUrl:  "https://istitutopantheon.it/wp-content/uploads/2023/04/IP_immagini_lauree_graphic_design.png",
        ),
        SizedBox(
          height: 35,
        ),
        ServiceCardMobile(
          title: "DIGITAL MARKETING",
          description: "We create and execute tailored strategies to connect with your audience and drive meaningful results.",
          imageUrl:  "https://blog.theinsightstudio.com/hubfs/Canva%20images/1000x700.jpg",
        ),
      ],
    );
  }
}


