import 'package:flutter/material.dart';
import '../ui/home_panel.dart';
import '../widget/drawer_menu.dart';

class MyHomePage extends StatefulWidget{
  //final VoidCallback shouldShowSignUp;
  final String title;
  MyHomePage({Key? key,required this.title}) : super(key: key);

  @override
  _MyHomePageState createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: HomePanel(),
      ),
    );
  }
}

