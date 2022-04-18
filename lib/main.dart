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

      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Widget'),

        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset('assets/images/image1.jpg',
                    height: 200,width: 200,fit: BoxFit.cover)),
                  Expanded(
                    child: Image.asset('assets/images/image2.jpg',
                    height: 200,width: 200,fit: BoxFit.cover)),
                  Expanded(
                    child: Image.asset('assets/images/image3.jpg',
                    height: 200,width: 200,fit: BoxFit.cover)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,color: Colors.green[500],),
                  Icon(Icons.star,color: Colors.green[500],),
                  Icon(Icons.star,color: Colors.green[500],),
                  Icon(Icons.star,color: Colors.black),
                  Icon(Icons.star,color: Colors.black,),
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}