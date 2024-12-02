import 'package:flutter/material.dart';

class NavBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavBarButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}