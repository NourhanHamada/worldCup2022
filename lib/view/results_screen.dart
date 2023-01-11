import 'package:flutter/material.dart';
import 'package:worldcup2022/model/news_card_row.dart';
import 'package:worldcup2022/model/results_card.dart';
import 'package:worldcup2022/model/results_second_card.dart';
import '../constants.dart';

class ResultsScreen extends StatefulWidget {

  var _isVisibleGroupOne = true ;
  var _isVisibleGroupTwo = false ;

  var _isViasibleRow1 = true;
  var _isVisibleRow2 = false;

  var _isFuchi1 = fuchi;
  var _isFuchi2 = fuchi;
  var _isNotFuchi1 = Colors.transparent;
  var _isNotFuchi2 = Colors.transparent;
  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,

      body: Padding(
        padding: const EdgeInsets.only(
          top: 30
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget._isVisibleGroupOne = true;
                      widget._isVisibleGroupTwo = false;
                      widget._isFuchi1 = widget._isFuchi2;
                      widget._isNotFuchi2 = widget._isNotFuchi1;
                      widget._isViasibleRow1 =true;
                      widget._isVisibleRow2 =false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget._isFuchi1,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'الاحصائيات',
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Tajawal',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget._isVisibleGroupTwo = true;
                      widget._isVisibleGroupOne = false;
                      widget._isNotFuchi2 = widget._isFuchi1;
                      widget._isFuchi1 = widget._isNotFuchi1;
                      widget._isVisibleRow2 = true;
                      widget._isViasibleRow1 = false;
                    });
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      color: widget._isNotFuchi2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Text(
                          'جدول الترتيب',
                          style: TextStyle(
                              color: white,
                              fontFamily: 'Tajawal',
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  // width: 80,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                      child: Text(
                        'المباريات',
                        style: TextStyle(
                            color: white,
                            fontFamily: 'Tajawal',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: widget._isViasibleRow1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: glassy,
                            borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            'كروت حمراء',
                            style: TextStyle(
                                color: white,
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: glassy
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'كروت صفراء',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: glassy
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'مساعدات',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'الهدافين',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: widget._isVisibleRow2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: glassy,
                            borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text(
                            'قبل النهائي',
                            style: TextStyle(
                                color: white,
                                fontFamily: 'Tajawal',
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: glassy
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'دور الـ 8',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: glassy
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'دور الـ 16',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          color: red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Text(
                              'المجموعات',
                              style: TextStyle(
                                  color: white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Visibility(
              visible: widget._isVisibleGroupOne,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'الأهداف',
                          style: TextStyle(
                              color: white,
                              fontSize: 16
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'اللاعب',
                              style: TextStyle(
                                  color: white,
                                  fontSize: 16
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              '#',
                              style: TextStyle(
                                  color: white,
                                  fontSize: 16
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: lightGrey,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      ResultsCard(
                          hash: '1',
                          flag: france,
                          player: 'كيليان مبابي',
                          goals: '5'),
                      ResultsCard(
                          hash: '1',
                          flag: argentina,
                          player: 'ليونيل ميسي',
                          goals: '5'),
                      ResultsCard(
                          hash: '3',
                          flag: portugal,
                          player: 'كرستيانو رونالدو',
                          goals: '4'),
                      ResultsCard(
                          hash: '3',
                          flag: england,
                          player: 'هاري كين',
                          goals: '4'),
                      ResultsCard(
                          hash: '3',
                          flag: poland,
                          player: 'روبرت ليفاندوفسكي',
                          goals: '4'),
                      ResultsCard(
                          hash: '6',
                          flag: belgium,
                          player: 'روميلو لوكاكو',
                          goals: '3'),
                      ResultsCard(
                          hash: '6',
                          flag: brazil,
                          player: 'نيمار',
                          goals: '3'),
                      ResultsCard(
                          hash: '8',
                          flag: senegal,
                          player: 'ساديو ماني',
                          goals: '2'),
                      ResultsCard(
                          hash: '8',
                          flag: uruguay,
                          player: 'لويس سواريز',
                          goals: '2'),

                    ],
                  )
                ],
              ),
            ),
            Visibility(
              visible: widget._isVisibleGroupTwo,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Column(
                  children: [
                    ResultsSecondCard(
                        group: 'المجموعة A',
                        firstteam: 'هولندا',
                        secondTeam: 'قطر',
                        thirdTeam: 'السنغال',
                        fourthTteam: 'الاكوادور',
                        firstFlag: france,
                        secondFlag: qatar,
                        thirdFlag: senegal,
                        fourthFlag: ecuador,
                        firstLine: '''4      1      3      1      1''',
                        secondLine: '''3      3      2      0      1''',
                        thirdLine: '''2      1      1      2      0''',
                        fourthLine: '''1      2      1      1      0'''),
                   const SizedBox(
                      height: 30,
                    ),
                    ResultsSecondCard(
                        group: 'المجموعة B',
                        firstteam: 'انجلترا',
                        secondTeam: 'ويلز',
                        thirdTeam: 'قطر',
                        fourthTteam: 'هولندا',
                        firstFlag: england,
                        secondFlag: wales,
                        thirdFlag: qatar,
                        fourthFlag: qatar,
                        firstLine: '''4      1      3      1      1''',
                        secondLine: '''3      3      2      0      1''',
                        thirdLine: '''2      1      1      2      0''',
                        fourthLine: '''1      2      1      1      0'''),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(
              color: fuchi,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            backgroundColor: glassy,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushNamed(context, '/profile');
                    });
                  },
                  child: ImageIcon(AssetImage(profile),
                    color: white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushNamed(context, '/results');
                    });
                  },
                  child: ImageIcon(AssetImage(chart),
                    color: fuchi,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/news');
                  },
                  child: ImageIcon(AssetImage(calendar),
                    color: white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushNamed(context, '/home');
                    });
                  },
                  child: ImageIcon(AssetImage(home),
                    color: white,
                  ),
                ),
                label: 'الرئيسية',
              ),


            ],
          ),
        ),
      ),
    );
  }
}
