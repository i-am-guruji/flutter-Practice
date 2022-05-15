import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack'),
        ),
        body: Center(
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/image1.jpg'),
                radius: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                child: Text("SATYA",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        ),
      )
      
    );
  }
}