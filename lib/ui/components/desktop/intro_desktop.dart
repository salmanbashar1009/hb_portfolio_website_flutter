import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home.png",
            ),
            fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
      child: Row(
        children: [
          _buildContentDesktop(),
          const Spacer(),
          ShakeY(
            animate: true,
              from: 15,
              duration: const Duration(seconds: 10),
              infinite: true,
              curve: Curves.decelerate,
              child: _buildProfileImage()
          )
        ],
      ),
    );
  }

  Widget _buildContentDesktop() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello, I'm",
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Habibul Bashar',
          style: TextStyle(
            fontSize: 48,
            color: Colors.black87.withOpacity(0.7),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 40,
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Flutter Developer',
                  speed: const Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600)),
              TypewriterAnimatedText('Graphic Designer',
                  speed: const Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),),
              TypewriterAnimatedText('Social Media Expert',
                  speed: const Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600)),

              // TypewriterAnimatedText(
              //   'Flutter Developer',
              //   textStyle: const TextStyle(fontSize: 24),
              //   speed: const Duration(milliseconds: 100),
              // ),
            ],
            repeatForever: true,
          ),
        ),
        const SizedBox(height: 16),
        const SizedBox(
          width: 500,
          child: Text(
            '''As a skilled Flutter developer, graphic designer, and social media strategist, I bring a unique blend of creativity and technical expertise to every project''',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:16),
              child: IconButton(
                  onPressed: () {
                    goToUrl( facebookUrl);
                  },
                  icon: const FaIcon(FontAwesomeIcons.squareFacebook, color: Colors.lightBlueAccent,size: 40,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right:16),
              child: IconButton(
                  onPressed: () {
    String whatsAppNumber = Uri.encodeComponent('+8801922700031');
    final whatsApp = "$whatsAppUrl=$whatsAppNumber";
    goToUrl(whatsApp);
    },
                  icon: const FaIcon(FontAwesomeIcons.squareWhatsapp, color: Colors.green,size: 40,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right:16),
              child: IconButton(
                  onPressed: () {
                    goToUrl( linkedInUrl);
                  },
                  icon: const FaIcon(FontAwesomeIcons.linkedin,size: 40,),
                    color: Colors.blue,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:16),
              child: IconButton(
                  onPressed: () {
                    goToUrl( githubUrl);
                  },
                  icon: const FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 40,),
                    color: Colors.blue,
                  ),
            ),

          ],
        )
      ],
    );
  }

  Widget _buildProfileImage() {
    return SizedBox(
      width: 450,
      height: 450,
      child: Image.asset(
        "assets/images/mobile.png",
        fit: BoxFit.contain,
      ),
    );
  }
}

