import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({ Key? key }) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states){
      Set<MaterialState> interactiveState = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if(states.any(interactiveState.contains)){
        return Colors.blue;
      }
      return Colors.red;
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('checkBox'),
        ),
        body: Center(
          child: Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: isChecked,
            onChanged: (bool ? value){
              setState(() {
                isChecked = value!;
              });
            },
        )
        ),
      )
      );
      
    
  }
}