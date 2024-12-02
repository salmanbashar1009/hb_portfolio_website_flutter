import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hb_website/ui/components/desktop/intro_desktop.dart';
import 'package:hb_website/ui/components/mobile/intro_mobile.dart';
import 'package:hb_website/ui/widgets/custom_responsive_widget.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomResponsiveWidget(mobile: IntroMobile(), tablet: IntroDesktop(), desktop: IntroDesktop());
  }
}