import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hb_website/ui/components/desktop/intro_desktop.dart';

void main(){
  testWidgets("HB portfolio intro renders correctly", (WidgetTester tester) async{
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child:IntroDesktop(),
          ),
        ),
      )
    );

    /// verify static text
    expect(find.text("Hi, I'm"),findsOneWidget);
    expect(find.text("Habibul Bashar"), findsOneWidget);

    /// verify description

  });
}