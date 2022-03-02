

import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/Screen/signup.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}


