import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/Screen/JobTitle.dart';
import 'package:my_first_flutter_project/Screen/SubmittedScreen.dart';
import 'package:my_first_flutter_project/Widget/SecondTextFeild.dart';
import 'package:my_first_flutter_project/Widget/app_button.dart';
import 'package:my_first_flutter_project/Widget/app_textfeild.dart';
class AddNewJob extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF191720),
      resizeToAvoidBottomInset: false,
      body: Padding(padding: EdgeInsets.only(top: 89,left: 27),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>JobTitle()));
                  },
                  child: const Icon(Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),

                ),
                const SizedBox(
                    width: 25
                ),
                const Text("Add New Job",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),),
              ],
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 11),
                    const Apptextfeild(placeholder: "Enter position name"
                    ),
                    const SecondTextFeild(placeholder: "Describe Requirement..."),
                    const SizedBox(height: 155),
                    AppButton(lable: "Submit Job", Onpress: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SubmittedScreen()));
                    },)


                  ],

                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}

