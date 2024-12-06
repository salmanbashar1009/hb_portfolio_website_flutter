import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
