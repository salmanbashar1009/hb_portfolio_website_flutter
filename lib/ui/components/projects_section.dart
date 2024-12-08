import 'package:flutter/material.dart';
import 'package:hb_website/ui/utils/launch_url.dart';

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
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildProjectCard(
                    title: 'E-Commerce App',
                    description:
                        'A full-featured shopping app built with Flutter and Firebase.',
                    imageUrl:
                        'https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                    onTap: (){
                      const projectUrl = "https://github.com/salmanbashar1009/flutter-projects/tree/main/crafty_bay_ecommerce";
                      goToUrl(projectUrl);
                    }
                  ),
                  const SizedBox(height: 50,),
                  _buildProjectCard(
                    title: 'Weather App',
                    description: 'A weather app with real-time weather update.',
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/05/98/43/34/360_F_598433431_FyVAh8mlbRxXxmrqMZy73RImXkaF7QUa.jpg',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                    onTap: (){
                      const projectUrl = "https://github.com/salmanbashar1009/weather-app-flutter";
                      goToUrl(projectUrl);
                    }
                  ),
                  const SizedBox(height: 50,),
                  _buildProjectCard(
                    title: 'Task Manager',
                    description:
                        'A productivity app with cloud synchronization.',
                    imageUrl:
                        'https://www.cflowapps.com/wp-content/uploads/2018/07/task-management-process.png',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                      onTap: (){
                        const projectUrl = "https://github.com/salmanbashar1009/flutter-projects/tree/main/flutter_task_manager_app";
                        goToUrl(projectUrl);
                      }
                  ),
                  const SizedBox(height: 50,),
                  _buildProjectCard(
                    title: 'E-commerce Website',
                    description:
                    'Penguin Fashion, an online store sells clothes for both men and women',
                    // imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/010/974/057/small/online-shopping-3d-illustration-shopping-online-store-for-sale-mobile-e-commerce-3d-background-buying-and-selling-concept-png.png',
                    imageUrl: 'https://static.vecteezy.com/system/resources/previews/005/638/065/non_2x/isometric-illustration-concept-online-shopping-e-commerce-smartphone-app-free-vector.jpg',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                      onTap: (){
                        const projectUrl = "https://github.com/salmanbashar1009/website-templates";
                        goToUrl(projectUrl);
                      }
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
    required VoidCallback onTap,
  }) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
                      onPressed: onTap,
                      icon: const Icon(Icons.code),
                      label: const Text(
                        'view code',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: onTap,
                      icon: const Icon(Icons.launch),
                      label: const Text(
                        'Preview',
                        style: TextStyle(fontSize: 14),
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
}
