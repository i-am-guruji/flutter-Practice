import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'first app',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
            ),
          title: Text('Firts app'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
        ),
  
    );
  }
}