import 'package:url_launcher/url_launcher.dart';


const mailUrl = 'https://mail.google.com/mail/?view=cm&fs=1&to';

const facebookUrl ='https://www.facebook.com/h.bashar.983510';
const linkedInUrl = 'https://www.linkedin.com/in/bashar-flutter-dev/';
const githubUrl = 'https://github.com/salmanbashar1009';
const whatsAppUrl = 'https://api.whatsapp.com/send?phone';
const telegramUrl = 'tg://resolve?domain';


Future<void> goToUrl(String url)async{
  await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication);
}

