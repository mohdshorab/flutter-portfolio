// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';


class createDetailsRow extends StatelessWidget {
  final IconData iconData;
  final String txt;
  
  const createDetailsRow({ Key? key, required this.iconData, required this.txt }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(iconData, size: 40,color: Colors.blue,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(txt, style: const TextStyle( fontSize: 20, fontWeight: FontWeight.w700),),
        ),
      ],      
    );
  }
}
// hvnbgjernbvjuienbg