import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class BigButton extends StatefulWidget {

  var text;
  var screen;

  BigButton({
   required this.text,
    this.screen
});

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, widget.screen);
      },
      child: Container(
        width: 228,
        height: 63,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Center(
          child: Text (
            '${widget.text}',
            style: TextStyle(
              color: maroon,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              // fontFamily: 'Tajawal'
              fontFamily: 'IbmPlexSans',
            ),
          ),
        ),
      ),
    );
  }
}
