import 'package:flutter/material.dart';

class HomePanel extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ButtonTheme(
          minWidth: 120,
          height: 120,
          padding: const EdgeInsets.all(20),
          child:RaisedButton(
            color: Colors.grey,
            child: const Text('Walk Start'),
            onPressed:(){
              Navigator.of(context).pushReplacementNamed("/play");
            },
            highlightColor: Colors.redAccent,
            onHighlightChanged: (value){},
          ),
        ),
      ],
    );
  }
}
