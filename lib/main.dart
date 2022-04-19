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
          title: Text('List view'),
        ) ,
        body: ListView(
          
          children: [
            _tile('CineArts At  the  Empire', '85 W Portal  Ave', Icons.theaters,Icons.send),
            _tile('The Castro Theater', '429 Castro St', Icons.theaters,Icons.send),
            _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters,Icons.send),
            _tile('Roxie Theater', '3117 16th St', Icons.theaters,Icons.send),
            _tile('United Artists Stonestown Twin', '501 Buckingham Way',Icons.theaters,Icons.send),
            _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters,Icons.send),
            const Divider(color: Colors.black,),
            _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant,Icons.send),
            _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant,Icons.send),
            _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant,Icons.send),
            _tile('La Ciccia', '291 30th St', Icons.restaurant,Icons.send),
            


          ],

        ),
        ),
      
    );
  }
}

ListTile _tile(String title,String subtitle,IconData icon,IconData icons){

  return ListTile(
    onTap: (){},
    title: Text(title,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),),
    subtitle: Text(subtitle),
    leading: Icon(icon,color: Colors.blue[500],),
    trailing: Icon(icons,color: Colors.blue[500],),

  );
}