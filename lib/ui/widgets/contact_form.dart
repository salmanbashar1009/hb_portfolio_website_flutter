import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hb_website/ui/utils/send_email.dart';
import 'package:hb_website/ui/widgets/primary_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _subjectTEController = TextEditingController();
  final TextEditingController _messageTEController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      sendEmail(
        context,
        _nameTEController.text.trim(),
        _emailTEController.text.trim(),
        _subjectTEController.text.trim(),
        _messageTEController.text.trim(),
      );
      _nameTEController.clear();
      _emailTEController.clear();
      _subjectTEController.clear();
      _messageTEController.clear();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nameTEController.dispose();
    _emailTEController.dispose();
    _subjectTEController.dispose();
    _messageTEController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        width: 600,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Send A Message",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _nameTEController,
                decoration: InputDecoration(
                  labelText: "Your Full Name",
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please, Enter your fuul name";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _emailTEController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Your Email",
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please, Enter your email";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _subjectTEController,
                decoration: InputDecoration(
                  labelText: "Subject",
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please, Enter subject";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _messageTEController,
                maxLines: 6,
                decoration: InputDecoration(
                  labelText: "Write your message",
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please, Enter your message";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 115,
                    child: PrimaryButton(
                        title: "Send",
                        icon: FaIcon(
                          FontAwesomeIcons.paperPlane,
                          size: 15,
                          color: Colors.white,
                        ),
                        onTap: _submitForm),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
