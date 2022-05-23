import 'package:flutter/material.dart';


class RatingApp extends StatelessWidget {
  const RatingApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rating app'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Expanded(
              child: Image.asset('assets/images/image1.jpg',
              height: 300,
              width: 200,
              fit: BoxFit.cover,
              ),
            ),
            tileSection,
            buttonSection,
            textSection,

          ],
        ),
      )
      
    );
  }
}


Column _builButtonColumn(Color color,IconData icon,String label,){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(onPressed: (){
      },
       icon: Icon(icon,color: color,)),
      Center(
        child: Text(
          label,
          style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold
          ),
        ),
      )
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _builButtonColumn(Colors.blue, Icons.call, 'CALL',),
    _builButtonColumn(Colors.blue, Icons.near_me,'NEAR ME'),
    _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
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

Widget tileSection = Container(
  padding: EdgeInsets.all(30),
  child: Row(
    children: [
      Expanded(
        child: Column(
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
        ),
      ),
      const FavoriteWidget()
    ],
  )
);


class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({ Key? key }) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {

  bool _isFavorited = true;
  int _FavoriteCount = 41;

   void _toggleFavorie(){
      setState(() {
        if(_isFavorited){
          _FavoriteCount -= 1;
          _isFavorited = false;
        }else{
          _FavoriteCount +=1;
          _isFavorited = true;
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
              ? Icon(Icons.star)
              : Icon(Icons.star_border)
            ),
            color: Colors.red,
            onPressed: _toggleFavorie,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_FavoriteCount'),
          ),
        )
      ],
    );
  }
}
