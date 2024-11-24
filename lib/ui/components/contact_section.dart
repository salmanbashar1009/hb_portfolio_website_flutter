import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.grey[100],
      child: Column(
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              _buildContactMethod(
                icon: FontAwesomeIcons.envelope,
                title: 'Email',
                value: 'tahmin1507@gmail.com',
                onTap: () => _launchUrl('https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=new'),
              ),
              _buildContactMethod(
                icon: FontAwesomeIcons.linkedin,
                title: 'LinkedIn',
                value: 'LinkedIn.com',
                onTap: () => _launchUrl('https://www.linkedin.com/in/flutter-developer-habibul-bashar'),
              ),
              _buildContactMethod(
                icon: FontAwesomeIcons.github,
                title: 'GitHub',
                value: '/salmanbashar1009',
                onTap: () => _launchUrl('https://github.com/salmanbashar1009'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactMethod({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
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
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}