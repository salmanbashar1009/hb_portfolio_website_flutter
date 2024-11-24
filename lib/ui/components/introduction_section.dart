import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/img.png",),fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 50),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: _buildContent()),
                const SizedBox(width: 50),
                _buildProfileImage(),
              ],
            );
          } else {
            return Column(

              children: [
                _buildProfileImage(),
                const SizedBox(height: 32),
                _buildContent(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello, I'm",
          style: TextStyle(fontSize: 24),
        ),
        const Text(
          'Habibul Bashar',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Flutter Developer',
              textStyle: const TextStyle(fontSize: 24),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          repeatForever: true,
        ),
        const SizedBox(height: 16),
        const Text(
          '''Passionate about creating beautiful and functional mobile applications.
With 5 years of experience in Flutter development, I specialize in building 
cross-platform solutions that delight users.''',


          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
      width: 450,
      height: 450,
      child: Image.asset("assets/images/mobile.png",fit: BoxFit.cover,),
    );
  }
}