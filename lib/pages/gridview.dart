import 'package:flutter/material.dart';

class GridViewsWidget extends StatelessWidget {
  const GridViewsWidget({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var idx = 16;
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: GridView.builder(
          itemCount: 16,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (ctx,index) => Container(
            color: Colors.blue,
            margin: EdgeInsets.all(6),
            child: Center(
              child: Text(index.toString(),style: TextStyle(
                color: Colors.white,
                
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
          
          )

      ),
      
    );
  }
}

/*
GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              color: Colors.red,
              child: Center(child: Text(idx.toString())),
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(5),
            )
          ],
          )

*/

/*
GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: [
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(6),
            )
          ],

          )

*/