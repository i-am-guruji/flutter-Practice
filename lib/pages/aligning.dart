import 'package:flutter/material.dart';


class AligningWidget extends StatelessWidget {
  const AligningWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(),

        body: Container(
          child: Column(
            children: [
        
             Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/images/image1.jpg')
                ),

              Expanded(
                flex: 2,
                child: Image.asset('assets/images/image2.jpg')
                ),
              Expanded(
                child: Image.asset('assets/images/image3.jpg')
                ),
            ],       
      ),

          SizedBox(
            height: 20,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.green,),
                Icon(Icons.star,color: Colors.green,),
                Icon(Icons.star,color: Colors.green,),
                Icon(Icons.star,color: Colors.black,),
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