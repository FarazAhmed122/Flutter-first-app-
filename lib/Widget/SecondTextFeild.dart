import 'package:flutter/material.dart';

class SecondTextFeild extends StatelessWidget {
  final String placeholder;

  const SecondTextFeild ({ required this.placeholder});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 15,bottom: 200   ,left: 20),
      decoration: BoxDecoration(
        color: Color(0xff1E1C24),
        border: Border.all(color: Color(0xff5D5D67),width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child:   TextField(

          style: const TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
            hintMaxLines: 10 ,
            hintText: placeholder,
            hintStyle: const TextStyle(
                color: Color(0xFF8F8F9E), fontSize: 15),
            border: InputBorder.none,


          )
      ),
    );



  }
}