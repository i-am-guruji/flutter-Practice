import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({ Key? key }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  String dropdownValue = 'ONE';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropDown'),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),

            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String ? newValue){
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String> ['ONE','TWO','THREE','FOUR']
            .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),

          ),
        )
      ),
      
    );
  }
}