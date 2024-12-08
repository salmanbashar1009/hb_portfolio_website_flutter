import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSectionDesktop extends StatelessWidget {
  const SkillsSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.1)
      ),
      child: Column(
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              _buildSkillCard('Flutter', FontAwesomeIcons.flutter),
              _buildSkillCard('Dart', FontAwesomeIcons.dartLang),
              _buildSkillCard('React', FontAwesomeIcons.react),
              _buildSkillCard('JavaScript', FontAwesomeIcons.js),
              _buildSkillCard('Node.js', FontAwesomeIcons.nodeJs),
              _buildSkillCard('Firebase', FontAwesomeIcons.fire),
              _buildSkillCard('UI/UX', FontAwesomeIcons.paintbrush),
              _buildSkillCard('GIT', FontAwesomeIcons.github),

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(String title, IconData icon) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          FaIcon(icon, size: 32),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}