import 'package:flutter/material.dart';


class AligningWidget extends StatelessWidget {
  const AligningWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(), 
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                  Expanded(child: Image.asset('assets/images/image1.jpg'))
                ],
              ),
            ),
          ),
        ),    
  
      ),  
    );
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star,color: Colors.red,),
    Icon(Icons.star,color: Colors.red,),
    Icon(Icons.star,color: Colors.black,),
    Icon(Icons.star,color: Colors.black,),
    Icon(Icons.star,color: Colors.black,),   
  ],
);

final rating = Container(
  padding: EdgeInsets.only(top: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      Text('220 Review',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 20
        ),)
    ],
  ),
);

final iconList = Container(
  padding: EdgeInsets.only(top: 40),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.kitchen,color: Colors.blueAccent,),
          Text('PREP'),
          Text('25 min'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.timer,color: Colors.blueAccent,),
          Text('COOK:'),
          Text('1 hours'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.restaurant,color: Colors.blueAccent,),
          Text('FEEDS:'),
          Text('4-6'),
        ],
      )
    ],
  ),
);

final leftColumn = Container(
  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      tital,
      subtitle,
      rating,
      iconList,
    ],
  ),

);

final tital = Center(
  child: Text('HANUMAN JI',
  style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  ),),
);

final subtitle = Container(
  padding: EdgeInsets.only(top: 20),
  child: Text(
  'Shri Guru Charan Saroj Raj After cleansing the mirror of my mind with the pollen'+
'Nij mane mukure sudhar dust of holy Gurus Lotus feet. I Profess the pure,'+
'Varnao Raghuvar Vimal Jasu untainted glory of Shri Raghuvar which bestows the four.'
),

);

