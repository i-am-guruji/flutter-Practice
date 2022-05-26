import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({ Key? key }) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Widget'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter User Name',
                    labelText: 'name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))
                  ),
                  validator: (String ? value){
                    if(value==null || value.isEmpty){
                      return 'Please Enter some text';
                    }
                    return null;
                  },
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    child: Text('Submmit'),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        //process data
                      }
                    },),
                  )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}