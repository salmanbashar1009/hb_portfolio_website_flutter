import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Text(
            'Latest Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: [
                  _buildProjectCard(
                    title: 'E-Commerce App',
                    description: 'A full-featured shopping app built with Flutter and Firebase.',
                    imageUrl: 'https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg',
                    width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth - 64,
                  ),
                  _buildProjectCard(
                    title: 'Weather App',
                    description: 'A weather app with real-time weather update.',
                    imageUrl: 'https://t3.ftcdn.net/jpg/05/98/43/34/360_F_598433431_FyVAh8mlbRxXxmrqMZy73RImXkaF7QUa.jpg',
                    width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth - 64,
                  ),
                  _buildProjectCard(
                    title: 'Task Manager',
                    description: 'A productivity app with cloud synchronization.',
                    imageUrl: 'https://www.cflowapps.com/wp-content/uploads/2018/07/task-management-process.png',
                    width: constraints.maxWidth > 800 ? 300 : constraints.maxWidth - 64,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String description,
    required String imageUrl,
    required double width,
  }) {
    return Container(
      width: width,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.code),
                      label: const Text('View Code'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.launch),
                      label: const Text('Preview'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}