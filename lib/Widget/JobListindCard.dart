import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/Screen/EditJob.dart';

class JobListingCard extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(top: 10),
      height: 102,
      padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
      decoration:  BoxDecoration(
        color: const Color(0xff201E27),
        borderRadius: BorderRadius.circular(10.0),
        // boxShadow: [
        //   BoxShadow(color: Colors.red.withOpacity(0.5),
        //       blurRadius: 4,
        //       offset: const Offset(1,4)),
        //
        // ]

      ),
      child: Column(
        children:  [
          Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    Text("Flutter Developer Required",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text("Karachi, Pakistan",style: TextStyle(color: Color(0xff8F8F9E),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => EditJob()),
                      );
                    },
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 25),
                  const Icon(Icons.delete_forever_outlined,
                    color: Color(0xffFF5959),
                    size: 25,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
