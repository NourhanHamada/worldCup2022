import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class MatchDate extends StatefulWidget {

  var date ;
  var firstFlag ;
  var secondFlag ;
  var firstCountry ;
  var secondCountry ;
  var firstScore ;
  var secondScore ;
  var status ;
  var left;

  MatchDate({
    this.date,
    this.firstFlag,
    this.secondFlag,
    this.firstCountry,
    this.secondCountry,
    this.firstScore,
    this.secondScore,
    this.status,
    this.left
});

  @override
  State<MatchDate> createState() => _MatchDateState();
}

class _MatchDateState extends State<MatchDate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: widget.left,
              ),
              // ImageIcon(AssetImage(arrowLeft), color: white,),
              Text(
                '${widget.date}',
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w600
                ),
              ),

            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: glassy,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/8.5,
                height: 70,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                ),
                child: Center(
                  child: Text('${widget.status}',
                  style: TextStyle(
                    color: maroon,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IbmPlexSans',
                    fontSize: 16
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 35,
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        widget.secondFlag,
                      ),
                      width: 40,
                    ),
                   const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('${widget.secondCountry}',
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text("${widget.secondScore}",
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('vs',
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text("-",
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('${widget.firstCountry}',
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text("${widget.firstScore}",
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      child: Image(
                        image: AssetImage(
                          widget.firstFlag,
                        ),
                        width: 40,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
