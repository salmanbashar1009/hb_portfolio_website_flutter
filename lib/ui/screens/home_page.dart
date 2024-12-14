import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_website/ui/components/desktop/app_bar_desktop.dart';
import 'package:hb_website/ui/components/mobile/app_bar_mobile.dart';
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
        inputDecorationTheme: InputDecorationTheme(
            alignLabelWithHint: true,
            floatingLabelStyle: TextStyle(color: Colors.lightBlueAccent.shade400),
            fillColor: Colors.white,
            labelStyle: TextStyle(color:Colors.grey.shade400 ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent.shade400)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500)
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            )
        )
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomResponsiveWidget(mobile: const AppBarMobile(), tablet: const AppBarMobile(), desktop: AppBarDesktop())
    );
  }
}










