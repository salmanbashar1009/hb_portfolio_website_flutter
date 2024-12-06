import 'package:flutter/material.dart';

class ServicesDesktop  extends StatelessWidget {
  const ServicesDesktop({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
    child: const Column(
      children: [
        Text('Available Services',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700 ),)
      ],
    ),
    );
  }
}
