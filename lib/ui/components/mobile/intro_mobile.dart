import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileImage(),
              const SizedBox(
                height: 30,
              ),
              _buildContentMobile()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildContentMobile() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Hello, I'm",
        style: TextStyle(fontSize: 16),
      ),
      const Text(
        'Habibul Bashar',
        style: TextStyle(
          fontSize: 32,
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
                    fontSize: 24,
                    fontWeight: FontWeight.w600)),
            TypewriterAnimatedText('Graphic Designer',
              speed: const Duration(milliseconds: 100),
              textStyle: const TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),),
            TypewriterAnimatedText('Social Media Expert',
                speed: const Duration(milliseconds: 100),
                textStyle: const TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 24,
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
        width: 380,
        child: Center(
          child: Text(
            '''As a skilled Flutter developer, graphic designer, and social media strategist, I bring a unique blend of creativity and technical expertise to every project''',
            style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,
          ),
        ),
      ),
      const SizedBox(height: 30,),
      InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: (){
          goToUrl("https://drive.google.com/file/d/1hr7e5Z_2TA4SVv_Zuz0QGYfGwsA7S60f/view?usp=sharing");
        },
        child: Container(
          width: 120,
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5), blurRadius: 8)
              ]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: FaIcon(
                  FontAwesomeIcons.download,
                  color: CupertinoColors.activeGreen,
                  size: 16,
                ),
              ),
              Text("Resume",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.green),)
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildProfileImage() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: SizedBox(
      width: 450,
      height: 450,
      child: Center(
        child: Image.asset(
          "assets/images/mobile.png",
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
