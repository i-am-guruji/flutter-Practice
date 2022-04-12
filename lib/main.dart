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
            tooltip: 'menu',
            icon: const Icon(Icons.menu),
            onPressed: (){},
            ),
            actions: [
              IconButton(
                padding: const EdgeInsets.only(right: 25),
                tooltip: 'search',
                onPressed: (){},
                icon: const Icon(Icons.search),
                )
            ],
            
          title: const Text('Firts app'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              print('my button was tab');
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.green
              ),
              child: const Center(
                child: Text(
                  'Click here'
                  ),
                  ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: IconButton(
            tooltip: 'Add',
            icon: Icon(Icons.add),
            onPressed: (){},),
          ),
      
        ),
        
  
    );
  }
}