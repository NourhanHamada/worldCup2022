import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class Group extends StatefulWidget {

  String image;
  var text;
  var background;

  Group({
  required  this.image,
  required  this.text,
  required  this.background,
});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.background,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              child: Image(
                image: AssetImage(
                  widget.image
                    // 'assets/images/flages/Flags/qatar.png'
                  // '${widget.image}'
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${widget.text}',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: 'Tajawal'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
