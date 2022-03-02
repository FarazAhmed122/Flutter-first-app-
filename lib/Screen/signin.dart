import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/Screen/JobTitle.dart';
import 'package:my_first_flutter_project/Screen/signup.dart';
import 'package:my_first_flutter_project/Widget/app_button.dart';
import 'package:my_first_flutter_project/Widget/app_textfeild.dart';


class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 27, top: 110, bottom: 59, right: 27),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's sign in", style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text ("Welcome back\nyou’ve been missed !",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(height: 47),
            const Apptextfeild(placeholder: "Enter your email address"),
            const Apptextfeild(placeholder: "Enter your password"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Signup()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  Text("Don’t have an account ? ",
                      style: TextStyle(color: Color(0xff8F8F9E), fontSize: 15)),
                  Text("Register", style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),

                ],
              ),
            ),
              const SizedBox(height: 11),
              AppButton(lable: "Sign Up", Onpress:(){Navigator.of(context).push(MaterialPageRoute(builder: (_) => JobTitle()));
  },
          ),
          ],
        ),
      ),


    );
  }
void onsignpress(){

}
}