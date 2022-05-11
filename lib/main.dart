import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/aligning.dart';
import 'package:flutter_basic/pages/gridview.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Master'),
        ),
        ),
        initialRoute: '/grid',
        routes: {
          '/this': (context) => AligningWidget(),
          '/grid' : (context) => GridViewsWidget(),
        },
      
    );
  }
}