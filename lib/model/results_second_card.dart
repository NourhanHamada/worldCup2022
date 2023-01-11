import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class ResultsSecondCard extends StatefulWidget {
  var group;
  var firstteam;
  var secondTeam;
  var thirdTeam;
  var fourthTteam;
  var firstFlag;
  var secondFlag;
  var thirdFlag;
  var fourthFlag;
  var firstLine;
  var secondLine;
  var thirdLine;
  var fourthLine;

  ResultsSecondCard({
    required this.group,
    required this.firstteam,
    required this.secondTeam,
    required this.thirdTeam,
    required this.fourthTteam,
    required this.firstFlag,
    required this.secondFlag,
    required this.thirdFlag,
    required this.fourthFlag,
    required this.firstLine,
    required this.secondLine,
    required this.thirdLine,
    required this.fourthLine,
  });

  @override
  State<ResultsSecondCard> createState() => _ResultsSecondCardState();
}

class _ResultsSecondCardState extends State<ResultsSecondCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(arrowLeft),
                color: white,
              ),
              Text(
                '${widget.group}',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
                color: glassy, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '''ف   ت   له   عليه   نقاط''',
                        style: TextStyle(color: white),
                      ),
                     const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'الفريق',
                        style: TextStyle(color: white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: white,
                    indent: 0,
                    endIndent: 180,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.firstLine}',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.firstteam}',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage(widget.firstFlag),
                            width: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: white,
                    indent: 0,
                    endIndent: 180,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.secondLine}',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.secondTeam}',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage(widget.secondFlag),
                            width: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: white,
                    indent: 0,
                    endIndent: 180,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.thirdLine}',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.thirdTeam}',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage(widget.thirdFlag),
                            width: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: white,
                    indent: 0,
                    endIndent: 180,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.fourthLine}',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.fourthTteam}',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage(widget.fourthFlag),
                            width: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: white,
                    indent: 3,
                    endIndent: 180,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
