import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String lable;
  final GestureTapCallback Onpress;

  const AppButton({required this.lable,required this.Onpress});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
    child:Container(
    alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xff1E1C24),width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: GestureDetector(
            onTap: Onpress,
            child: Text(lable),



          ),
        ),
        )
      ],
    );
  }
}
