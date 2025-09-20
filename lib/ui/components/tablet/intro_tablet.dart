import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class IntroTablet extends StatelessWidget {
  const IntroTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home.png",
            ),
            fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          _buildContentDesktop(),
          const Spacer(),
          _buildProfileImage()
        ],
      ),
    );
  }

  Widget _buildContentDesktop() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
            color: Colors.black87.withAlpha(178),
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
            style: TextStyle(fontSize: 16),textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    return SizedBox(
      width: 450,
      height: 450,
      child: Image.asset(
        "assets/images/mobile.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

