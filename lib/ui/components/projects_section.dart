import 'package:flutter/material.dart';
import 'package:hb_website/ui/utils/launch_url.dart';
import 'package:hb_website/ui/widgets/project_preview_sheet.dart';

import '../../core/constants/urls.dart';
import '../widgets/porject_card.dart';

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
                  projectCard(
                      title: 'Live Streaming App',
                      description:
                      'Malooz Television is a live streaming mobile application... ',
                      imageUrl: Urls.liveStreamingVectorImage,
                      width: constraints.maxWidth > 800
                          ? 300
                          : constraints.maxWidth - 24,
                      viewCode: (){
                        const projectUrl = Urls.maloozTvGithubUrl;
                        goToUrl(projectUrl);
                      },
                      preview: (){
                        showProjectPreview(context, "Live Streaming App", Urls.maloozTvPreview);
                      }
                  ),
                  const SizedBox(height: 50,width: 12,),
                  projectCard(
                      title: 'Sleep Soundscape',
                      description:
                      'Sleep Soundscape helps users relax and fall asleep faster...',
                      imageUrl: Urls.sleepSoundVectorImage,
                      width: constraints.maxWidth > 800
                          ? 300
                          : constraints.maxWidth - 24,
                      viewCode: (){
                        const projectUrl = Urls.sleepSoundscapeGithubUrl;
                        goToUrl(projectUrl);
                      },
                      preview: (){
                        showProjectPreview(context, "Sleep Soundscape", Urls.sleepSoundscapePreview);
                      }
                  ),
                  const SizedBox(height: 50,width: 12,),
                  projectCard(
                      title: 'Period Tracker',
                      description:
                      'Ovella Period Tracker App is a modern, user-friendly Flutter application...',
                      imageUrl: Urls.sleepSoundVectorImage,
                      width: constraints.maxWidth > 800
                          ? 300
                          : constraints.maxWidth - 24,
                      viewCode: (){
                        const projectUrl = Urls.sleepSoundscapeGithubUrl;
                        goToUrl(projectUrl);
                      },
                      preview: (){
                        showProjectPreview(context, "Period Tracker", Urls.ovellaPeriodTrackerPreview);
                      }
                  ),
                  const SizedBox(height: 50,width: 12,),
                  projectCard(
                    title: 'E-Commerce App',
                    description:
                        'A full-featured shopping app built with Flutter and Firebase.',
                    imageUrl:
                        'https://static.vecteezy.com/system/resources/previews/012/335/181/non_2x/mobile-shopping-concept-a-man-and-a-woman-buy-things-in-the-online-store-through-a-big-smartphone-e-commerce-and-online-shopping-illustration-in-flat-style-vector.jpg',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                    viewCode: (){
                      const projectUrl = "https://github.com/salmanbashar1009/flutter-projects/tree/main/crafty_bay_ecommerce";
                      goToUrl(projectUrl);
                    },
                      preview: (){
                        showProjectPreview(context, "E-commerce App", "https://raw.githubusercontent.com/salmanbashar1009/flutter-projects/main/crafty_bay_ecommerce/assets/images/crafty-bay.png");
                      }
                  ),
                  const SizedBox(height: 50,width: 12,),
                  projectCard(
                    title: 'Weather App',
                    description: 'A weather app with real-time weather update.',
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/05/98/43/34/360_F_598433431_FyVAh8mlbRxXxmrqMZy73RImXkaF7QUa.jpg',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                    viewCode: (){
                      const projectUrl = "https://github.com/salmanbashar1009/weather-app-flutter";
                      goToUrl(projectUrl);
                    },
                      preview: (){
                        showProjectPreview(context, "Weather App", "https://raw.githubusercontent.com/salmanbashar1009/weather-app-flutter/main/bg.png");
                      }
                  ),
                  const SizedBox(width:12, height: 50,),
                  projectCard(
                    title: 'Task Manager',
                    description:
                        'A productivity app with cloud synchronization.',
                    imageUrl:
                        'https://www.cflowapps.com/wp-content/uploads/2018/07/task-management-process.png',
                    width: constraints.maxWidth > 800
                        ? 300
                        : constraints.maxWidth - 24,
                      viewCode: (){
                        const projectUrl = "https://github.com/salmanbashar1009/flutter-projects/tree/main/flutter_task_manager_app";
                        goToUrl(projectUrl);
                      },
                      preview: (){
                        showProjectPreview(context, "Task Manager", "https://raw.githubusercontent.com/salmanbashar1009/flutter-projects/main/flutter_task_manager_app/img_1.png");
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

}
