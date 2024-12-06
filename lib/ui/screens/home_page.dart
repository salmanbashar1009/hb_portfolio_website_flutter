import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_website/ui/widgets/app_bar_desktop.dart';
import 'package:hb_website/ui/widgets/app_bar_mobile.dart';
import 'package:hb_website/ui/widgets/custom_responsive_widget.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H. Bashar Portfolio Website',
      theme: ThemeData(
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
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomResponsiveWidget(mobile: AppBarMobile(), tablet: AppBarDesktop(), desktop: AppBarDesktop())
    );
  }
}










