import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/widgets/primary_button.dart';

class service_card_mobile extends StatelessWidget {
  const service_card_mobile({
    super.key, required this.title, required this.description, required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 0,
                blurRadius: 10,
                blurStyle: BlurStyle.outer
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              description,
              softWrap: true,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 130,
            child: PrimaryButton(
                title: "Contact",
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 16,
                  color: Colors.white,
                ),
                onTap: () {
                  String whatsAppNumber = Uri.encodeComponent('+8801922700031');
                  final whatsApp = "$whatsAppUrl=$whatsAppNumber";
                  goToUrl(whatsApp);
                }
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}