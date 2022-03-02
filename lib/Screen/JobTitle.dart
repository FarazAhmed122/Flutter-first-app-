import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/Screen/AddNewJob.dart';
import 'package:my_first_flutter_project/Screen/signin.dart';
import 'package:my_first_flutter_project/Widget/JobListindCard.dart';
import 'package:my_first_flutter_project/Widget/SearchTextFeild.dart';



class JobTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 74,
        width: 74,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>   AddNewJob()));
          },
          child: const Icon(
            Icons.add,
            size: 54,
            color: Color(0xFF191720),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(left: 27, top: 79),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:    [
            Row(
              children:  [
                const Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 18,
                    fontWeight: FontWeight.bold)),
                const Spacer(),
                GestureDetector(
                  onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Signin()));
                  },
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Text ("Ishaq Hassan",
                style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w300)),
             const SearchTextFeild(placeholder:"Search keywords..."),
            Expanded(
                child:ListView(
                  children: [
                    JobListingCard(),
                    JobListingCard(),
                    JobListingCard(),
                    JobListingCard(),
                    JobListingCard(),
                    JobListingCard(),
                    JobListingCard(),
                    const SizedBox(height: 100),
                  ],
                )
            ),

          ],
        ),
      ),


    );



  }
  void onpress(){

  }

}
