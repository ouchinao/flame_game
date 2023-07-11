import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'page/game_page.dart';
// import 'ui/game_panel.dart';
// import 'package:flame/game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String title = 'Mons walk';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.black,
        accentColor: Colors.black,
      ),
      home: MyHomePage(title: title),
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context)=>MyHomePage(title: title),
        '/play':(BuildContext context)=>MyGamePage(title: title),
        // '/play':(BuildContext context)=>MyGame();
      },
    );
  }
}

