import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class NewsCardStack extends StatefulWidget {

  var image ;
  var news ;
  var news2;

  NewsCardStack({
   required this.image,
   required this.news,
    this.news2
});

  @override
  State<NewsCardStack> createState() => _NewsCardStackState();
}

class _NewsCardStackState extends State<NewsCardStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image(
              image: widget.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${widget.news}',
                  style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  '${widget.news2}',
                  style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}