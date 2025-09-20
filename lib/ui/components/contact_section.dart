import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/widgets/contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(32.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10)
          ),
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
                    onTap: () {
                      String compose = Uri.encodeComponent("tahmin1507@gmail.com");
                      final mailtoUrl = "$mailUrl=$compose";
                      goToUrl(mailtoUrl);
                    },
                  ),
                  _buildContactMethod(
                    icon: FontAwesomeIcons.whatsapp,
                    title: 'WhatsApp',
                    value: '+88 01922700031',
                    onTap: () {
                      String whatsAppNumber = Uri.encodeComponent('+8801922700031');
                      final whatsApp = "$whatsAppUrl=$whatsAppNumber";
                      goToUrl(whatsApp);
                    },
                  ),
                  _buildContactMethod(
                    icon: FontAwesomeIcons.telegram,
                    title: 'Telegram',
                    value: '@Shadow_Man1009',
                    onTap: () {
                      String tgNumber = Uri.encodeComponent('Shadow_Man1009');
                      final telegram = "$telegramUrl=$tgNumber";
                      goToUrl(telegram);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        ContactForm(),
      ],
    );
  }

  Widget _buildContactMethod({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,

  }) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(25),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          FaIcon(icon, size: 32,),
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
          SizedBox(height: 16,),
          SizedBox(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              ),
              onPressed: onTap,
              child: Text("Let's Chat",style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}