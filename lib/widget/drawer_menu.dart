import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            child: Text(
              'メニュー',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('ホーム'),
            onTap: (){
              Navigator.of(context).pushReplacementNamed("/home");
            },
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text('閉じる'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}