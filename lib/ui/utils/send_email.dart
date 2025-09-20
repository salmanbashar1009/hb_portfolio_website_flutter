
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<bool> sendEmail(BuildContext context,
    String name, String email, String subject, String message) async {

  Map<String,dynamic> textBody = {
    "access_key" : "8752b2e2-eab1-4c9d-baed-35d1c18707ec",
    "name" : name,
    "email" : email,
    "subject" : subject,
    "message" : message
  };

  final response = await http.post(Uri.parse("https://api.web3forms.com/submit"),
      headers: {'Content-Type': 'application/json'}, body: jsonEncode(textBody));

  if (!context.mounted) return false; // prevent using context if disposed

  if(response.statusCode == 200){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Success!"),
          content: Text("Thanks for your message. We'll contact you soon"),
          actions: [TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))],
        );
      }
      );
      Future.delayed(const Duration(seconds: 2)).then((_){
        if(context.mounted) Navigator.pop(context);
      });
      return true;
  }else{
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Failed!"),
        content: Text("Try again"),
        actions: [TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Back"))],
      );
    });
    Future.delayed(const Duration(seconds: 2)).then((_){
      if(context.mounted) Navigator.pop(context);
    });
   return false;
  }
}






// Future<bool> sendEmail(
//     BuildContext context,
//     String name,
//     String email,
//     String subject,
//     String message,
//     ) async {
//   Map<String, dynamic> textBody = {
//     "access_key": "8752b2e2-eab1-4c9d-baed-35d1c18707ec",
//     "name": name,
//     "email": email,
//     "subject": subject,
//     "message": message,
//   };
//
//   final response = await http.post(
//     Uri.parse("https://api.web3forms.com/submit"),
//     headers: {'Content-Type': 'application/json'},
//     body: jsonEncode(textBody),
//   );
//
//   if (!context.mounted) return false; // prevent using context if disposed
//
//   if (response.statusCode == 200) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Success!"),
//           content: const Text("Thanks for your message. We'll contact you soon"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text("Back"),
//             )
//           ],
//         );
//       },
//     );
//
//     Future.delayed(const Duration(seconds: 2)).then((_) {
//       if (context.mounted) Navigator.pop(context);
//     });
//
//     return true;
//   } else {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Failed!"),
//           content: const Text("Try again"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text("Back"),
//             )
//           ],
//         );
//       },
//     );
//
//     Future.delayed(const Duration(seconds: 2)).then((_) {
//       if (context.mounted) Navigator.pop(context);
//     });
//
//     return false;
//   }
// }

