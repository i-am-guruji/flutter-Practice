import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: Card(
          elevation: 8.0,
          clipBehavior: Clip.antiAlias,
          child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text("Card Tile 1"),
                  subtitle: Text("secondary text"),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Shri Guru Charan Saroj Raj Nijuman Mukur Sudhar Bal Budhi Vidhya De Hu Mohi Haru Kare Subhikar"),
          
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: (){},
                      child: Text("Action1",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25
                      ),)
                      ),
                       FlatButton(
                      onPressed: (){},
                      child: Text("Action2",style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25
                      ),)
                      ),
                     Expanded(child:Image.asset('assets/images/image1.jpg')),
                     SizedBox(
                       height: 20,
                     ),
                    Expanded(child:Image.asset('assets/images/image2.jpg')),
                  ],
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}

/*
Container(
          padding: EdgeInsets.only(top: 30),
          child: SizedBox(
          height: 300,
          child: Card(
            elevation: 8.0,
            child: Column(
              children: [
                ListTile(
                  onTap: (){},
                  title: Text("Contact",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),),
                  subtitle: Text("9512856811"),
                  leading: Icon(Icons.phone),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Email",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),),
                  subtitle: Text("satyam@gmail.com"),
                  leading: Icon(Icons.email),
                ),
                ListTile(
                  onTap: (){},
                  title: Text("Send",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),),
                  subtitle: Text("9512856811"),
                  leading: Icon(Icons.send),
                )
              ],
            ),
          ),
          
      ),
        ),

*/