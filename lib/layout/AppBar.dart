import "package:flutter/material.dart";


class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new AppBar(
      leading: new Container(
        child:new Row(
          children:[
            new Text('B', style: new TextStyle(
                color:Color.fromRGBO(28, 188, 156, 1),
                fontSize:16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Microsoft Yahei'
            )),
            new Text('est', style: new TextStyle(
                color: Color.fromRGBO(43, 67, 86, 1),
                fontSize:16,
                fontFamily: 'Microsoft Yahei'
            ))
          ]
        )
      ),
    actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
          },
        ),
      ],
    );
  }
}