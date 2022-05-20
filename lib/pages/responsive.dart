import 'package:flutter/material.dart';

class ResponiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponiveWidget({  Key? key,required this.mobile,required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrains){
        if(constrains.maxWidth<768){
          return mobile;
        }else{
          return desktop;
        }
      }   
    );
  }
}
