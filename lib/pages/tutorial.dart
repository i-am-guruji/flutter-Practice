import 'package:flutter/material.dart';

class Tutorail extends StatelessWidget {
  const Tutorail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Image.asset('assets/images/image1.jpg',
              height: 300,
              width: 200,
              fit: BoxFit.cover,)),
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
      
    );
  }
}


Widget titleSection = Container(
  padding: EdgeInsets.all(30),
  child: Row(
    children: [
     Expanded(
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             padding: EdgeInsets.only(bottom: 8),
             child: Text("HANUMAN JI",
             style: TextStyle(
               fontWeight: FontWeight.bold,
             ),),
           ),

           Text('jay shree ram',
           style: TextStyle(
             color: Colors.grey
           ),),
         ],
       )
       ),
       Icon(Icons.star,
       color: Colors.red[500],),
       Text('41'),
    ],
  ),
);

Column _buildButtonColumn(Color color,IconData icon,String label,){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon ,color: color,),
      
      Container(
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontSize: 12
          ),
        ),
      ),

    ],
  );
}



Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call , 'CALL',),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'NEAR ME'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE')
  ],
);

Widget textSection = Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'jay hanuan gyan gun sagar jay kapish tihu lock ujagar'
    'ram dut atulit bal dgama anhani puta pawan sukh nama'
    'sankar suman kesari nandan teze prata maha jag bandan'
    'jay hanuan gyan gun sagar jay kapish tihu lock ujagar'
    'ram dut atulit bal dgama anhani puta pawan sukh nama'
    'sankar suman kesari nandan teze prata maha jag bandan'
    'jay hanuan gyan gun sagar jay kapish tihu lock ujagar',
    softWrap: true,
  ),
  );
