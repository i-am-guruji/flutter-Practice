import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';


class ListViewWidget extends StatelessWidget {
  const ListViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 20,left: 10),
          children: [
            _tile('Email', 'satyam@gmail.com', Icons.email),
            _tile('Contact', '951256811', Icons.phone),
            _tile('Message', 'click to send meg', Icons.message),
            Divider(),
             _tile('Email', 'nidhi@gmail.com', Icons.email),
            _tile('Contact', '6353403684', Icons.phone),
            _tile('Message', 'click to send meg', Icons.message),
            Divider(),
             _tile('Email', 'shivam@gmail.com', Icons.email),
            _tile('Contact', '9909845907', Icons.phone),
            _tile('Message', 'click to send meg', Icons.message),
            Divider(),
             _tile('Email', 'shubahm@gmail.com', Icons.email),
            _tile('Contact', '7435864300', Icons.phone),
            _tile('Message', 'click to send meg', Icons.message),



          ],),
        ),
      );
  }
}

ListTile _tile(String title,String subtitle,IconData icon){
  return ListTile(
    title: Text(title,style: TextStyle(fontSize: 25,color: Colors.black),),
    subtitle: Text(subtitle),
    leading: Icon(icon,color: Colors.blue,),
    onTap: (){},
  );
}