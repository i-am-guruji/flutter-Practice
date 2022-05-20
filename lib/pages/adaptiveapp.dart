import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basic/pages/responsive.dart';

class AdaptiveWidget extends StatelessWidget {
  const AdaptiveWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('advaptive app'),
        ),
        body: SafeArea(

          child: ResponiveWidget(
            mobile: Column(
                children: [
                  bulidBannerSlider(),
                  bulidIntroText(),
                ],
              ), 
            desktop: Row(
                children: [
                  bulidBannerSlider(),
                  SizedBox(width: 20,),
                  Expanded(child: bulidIntroText()),
                ],
              )),
          /*
          child: LayoutBuilder(builder: (context, Constraints ) {

            if(Constraints.maxWidth<768){
               return Column(
                children: [
                  bulidBannerSlider(),
                  bulidIntroText(),
                ],
              );
            }else{
               return Row(
                children: [
                  bulidBannerSlider(),
                  SizedBox(width: 20,),
                  Expanded(child: bulidIntroText()),
                ],
              );
            }     
            }
          ),*/
        ),
      ),
      
    );
  }
}

Container bulidBannerSlider() {
    return Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.red,Colors.pink]),
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
  }
Text bulidIntroText(){
  return  Text(
                    'hey there, \n\n my name is satyam gupta.'
                    'I am from surat. /n i am studey is bca subject',
                    style: TextStyle(fontSize: 22),
                  );
}


