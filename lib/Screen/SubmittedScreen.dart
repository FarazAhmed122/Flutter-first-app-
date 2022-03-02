import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmittedScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return    Scaffold(


      backgroundColor: const Color(0xFF191720),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("successfully Submitted :)",style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 60,
              fontStyle: FontStyle.italic),),
        ],
      ),
    );
  }
}
