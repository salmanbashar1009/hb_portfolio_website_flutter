import 'package:flutter/material.dart';

Widget projectCard({
  required String title,
  required String description,
  required String imageUrl,
  required double width,
  required VoidCallback viewCode,
  required VoidCallback preview,
}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withAlpha(178),
            spreadRadius: 0,
            blurRadius: 10,
            blurStyle: BlurStyle.outer
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          child: Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(description),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: viewCode,
                    icon: const Icon(Icons.code,size: 15,),
                    label: const Text(
                      'View Code',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Spacer(),
                  TextButton.icon(
                    onPressed: preview,
                    icon: const Icon(Icons.launch,size: 15,),
                    label: const Text(
                      'Preview',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}