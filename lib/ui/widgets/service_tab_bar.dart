import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/widgets/tab_menu.dart';
import 'package:hb_website/ui/widgets/tab_menu_services.dart';

class ServiceTabBar extends StatefulWidget {
  const ServiceTabBar({super.key});

  @override
  State<ServiceTabBar> createState() => _ServiceTabBarState();
}

class _ServiceTabBarState extends State<ServiceTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> serviceData = [
    TabMenuServices(
        icon: const FaIcon(FontAwesomeIcons.code,size: 24,color: Colors.lightBlueAccent,),
        title: "Web Development ",
        description:
            '''Web Development service offers comprehensive solutions to create, maintain, and enhance your online presence. We specialize in building responsive, user-friendly websites tailored to your business needs.''',
        onTop: () {
          String whatsAppNumber = Uri.encodeComponent('+8801922700031');
          final whatsApp = "$whatsAppUrl=$whatsAppNumber";
          goToUrl(whatsApp);
        },
      imageUrl: "https://cdn.pixabay.com/photo/2019/10/09/07/28/development-4536630_640.png",
    ),
    TabMenuServices(
        icon: const FaIcon(FontAwesomeIcons.mobile,size: 24,color: Colors.lightBlueAccent,),
        title: "Mobile App Development ",
        description:
            '''Mobile App Development service is dedicated to bringing your ideas to life on iOS and Android platforms. We specialize in creating intuitive, high-performance mobile applications that cater to your business needs and enhance user engagement.''',
        onTop: () {
          String whatsAppNumber = Uri.encodeComponent('+8801922700031');
          final whatsApp = "$whatsAppUrl=$whatsAppNumber";
          goToUrl(whatsApp);
        },
      imageUrl: 'https://static.vecteezy.com/system/resources/previews/029/320/017/non_2x/web-development-mobile-app-app-ai-generated-free-png.png',
    ),
    TabMenuServices(
        icon: const FaIcon(FontAwesomeIcons.photoFilm,size: 24,color: Colors.lightBlueAccent,),
        title: "Graphic Design ",
        description:
            '''Our graphic design service brings your brand to life with visually stunning and impactful designs. We specialize in creating custom graphics that capture your brand's essence and communicate your message effectively. ''',
        onTop: () {
          String whatsAppNumber = Uri.encodeComponent('+8801922700031');
          final whatsApp = "$whatsAppUrl=$whatsAppNumber";
          goToUrl(whatsApp);
        },
      imageUrl: 'https://istitutopantheon.it/wp-content/uploads/2023/04/IP_immagini_lauree_graphic_design.png',
      // imageUrl: 'https://5.imimg.com/data5/RT/OE/MY-14757119/creative-graphic-design-service-250x250.jpeg',
    ),
    TabMenuServices(
        icon: const FaIcon(FontAwesomeIcons.desktop,size: 24,color: Colors.lightBlueAccent,),
        title: "Social Media Management",
        description:
            '''Our social media management service is designed to elevate your brand's online presence and engagement. We specialize in creating and executing tailored social media strategies that resonate with your target audience. ''',
        onTop: () {
          String whatsAppNumber = Uri.encodeComponent('+8801922700031');
          final whatsApp = "$whatsAppUrl=$whatsAppNumber";
          goToUrl(whatsApp);
        },
      imageUrl: "https://blog.theinsightstudio.com/hubfs/Canva%20images/1000x700.jpg",
    ),
  ];


  List<Widget> tabMenu = [
    const TabMenuItem(icon: FaIcon(FontAwesomeIcons.code,size: 15,),title: "WEB DEV",),
    const TabMenuItem(icon: FaIcon(FontAwesomeIcons.mobile,size: 15,),title: "MOBILE APP",),
    const TabMenuItem(icon: FaIcon(FontAwesomeIcons.photoFilm,size: 15,),title: "GRAPHICS",),
    const TabMenuItem(icon: FaIcon(FontAwesomeIcons.desktop,size: 15,),title: "SOCIAL MEDIA",),
  ];

  @override
  void initState() {
    super.initState();
     _tabController = TabController(length: serviceData.length, vsync: this);
  }

  @override
  void dispose() {
   _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
            TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              indicator: BoxDecoration(
                border: const Border(
                  bottom:BorderSide( color: Colors.blue, width: 3.0,)),
                borderRadius: BorderRadius.circular(0),
                color: Colors.grey.shade100,

              ),
              indicatorSize: TabBarIndicatorSize.label,
              dividerHeight:0,
              tabs: tabMenu,
            ),
          const SizedBox(height: 40,),

          SizedBox(
            width:750,
            height: 380,
            child: TabBarView(
              controller: _tabController,
              children: serviceData,
            ),
          ),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
