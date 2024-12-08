import 'package:flutter/material.dart';

class RouteLogic{

 static final GlobalKey _homeKey = GlobalKey();
 static final GlobalKey _serviceKey = GlobalKey();
 static  final GlobalKey _skillKey = GlobalKey();
 static final GlobalKey _projectKey = GlobalKey();
 static final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(GlobalKey key){
    final context = key.currentContext;
    if(context != null){
      Scrollable.ensureVisible(context,duration: const Duration(milliseconds: 500));
    }
  }

  GlobalKey get homeKey => _homeKey;
  GlobalKey get serviceKey => _serviceKey;
  GlobalKey get skillKey => _skillKey;
  GlobalKey get projectKey => _projectKey;
  GlobalKey get contactKey => _contactKey;


}