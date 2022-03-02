import 'package:flutter/material.dart';

class SearchTextFeild extends StatelessWidget {
  final String placeholder;

  const SearchTextFeild({ required this.placeholder});
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 10,top: 6,bottom: 6),
        decoration: BoxDecoration(
          color: const Color(0xff1E1C24),
          border: Border.all(color: const Color(0xff5D5D67),width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
            style:const TextStyle(color: Colors.white, fontSize: 15),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search,color: Color(0xFF8F8F9E),size: 18.75),
              hintText: placeholder ,
              hintStyle: const TextStyle(
                  color: Color(0xFF8F8F9E), fontSize: 15),
              border: InputBorder.none,


            )
        ),
      );




  }
}
