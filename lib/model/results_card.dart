import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class ResultsCard extends StatefulWidget {

  var hash ;
  var flag ;
  var player ;
  var goals ;

  ResultsCard({
  required  this.hash,
  required  this.flag,
  required  this.player,
  required  this.goals
});

  @override
  State<ResultsCard> createState() => _ResultsCardState();
}

class _ResultsCardState extends State<ResultsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: 340,
        height:50,
        decoration: BoxDecoration(
          color: glassy,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${widget.goals}',
              style: TextStyle(
                color: white,
              ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.player}',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                 const SizedBox(
                    width: 10,
                  ),
                  Image(image:
                  AssetImage(widget.flag),
                  width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('${widget.hash}',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
