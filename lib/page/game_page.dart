import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../widget/drawer_menu.dart';
import '../ui/game_panel.dart';



class MyGamePage extends StatefulWidget{
  MyGamePage({Key? key,required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState()=>_MyGamePageState();
}

class _MyGamePageState extends State<MyGamePage>{
  final gamePanel = GamePanel();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: GameWidget(game: gamePanel),
        ),
    );
  }
}
