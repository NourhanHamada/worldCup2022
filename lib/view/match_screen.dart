import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

import '../model/group.dart';
import '../model/match_date.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      // appBar: AppBar(
      //   backgroundColor: maroon,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text('المجموعة E',
      //   textDirection: TextDirection.rtl,
      //   style: TextStyle(
      //     color: white,
      //     fontFamily: 'Tajawal',
      //     fontSize: 24,
      //   ),
      //   ),
      //   actions: [
      //     Image(image: AssetImage(arrowRight),
      //     color: white,
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('المجموعة E',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: white,
                      fontFamily: 'Tajawal',
                      fontSize: 24,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.pushNamed(context, '/');
                      });
                    },
                    child: Image(image: AssetImage(arrowRight),
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: glassy,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:
                            Text('')
                        ),
                        Image(
                          image: AssetImage(
                              germany
                          ),
                          width: 35,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'ألمانيا',
                      style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                        '2 - 3',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'Tajawal',
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                   const SizedBox(
                      height: 10,
                    ),
                    Text(
                        '9:00 مساءً',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: lightGrey,
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: glassy,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:
                            Text('')
                        ),
                        Image(
                          image: AssetImage(
                              spain
                          ),
                          width: 35,
                        ),
                      ],
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'أسبانيا',
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontFamily: 'Tajawal',
                    ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'متابعة حية',
                      style: TextStyle(
                          color: lightGrey,
                          fontFamily: 'Tajawal',
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'التشكيل',
                      style: TextStyle(
                          color: lightGrey,
                          fontFamily: 'Tajawal',
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: fuchi,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      'إحصائيات',
                      style: TextStyle(
                          color: white,
                          fontFamily: 'Tajawal',
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                        'ملخص',
                      style: TextStyle(
                        color: lightGrey,
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          '8',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        child: Text(
                            'التسديدات',
                        style: TextStyle(
                          color: lightGrey,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal'
                        ),
                        ),
                      ),
                      Text(
                          '12',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        child: Text(
                          'الهجمات',
                          style: TextStyle(
                              color: lightGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                      ),
                      Text(
                        '29',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '42',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        child: Text(
                          'الاستحواذ %',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: lightGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                      ),
                      Text(
                        '58',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        child: Text(
                          'بطاقة 🟨',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: lightGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '8',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        child: Text(
                          'ضربات زكية',
                          style: TextStyle(
                              color: lightGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                      ),
                      Text(
                        '7',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'مشاهدة الكل',
                  style: TextStyle(
                    color: lightGrey,
                    fontSize: 14,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Text(
                      'مباريات أخرى',
                  style: TextStyle(
                    color: white,
                    fontSize: 24,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MatchDate(
                      date: '',
                      firstFlag: japan,
                      firstCountry: 'اليابان',
                      firstScore: '1',
                      secondCountry: 'كوستاريكا',
                      secondScore: '0',
                      secondFlag: japan,
                      status: 'تمت',
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    MatchDate(
                      date: '',
                      firstFlag: belgium,
                      firstCountry: 'بلجيكا',
                      firstScore: '1',
                      secondCountry: 'المغرب',
                      secondScore: '2',
                      secondFlag: morocco,
                      status: "تمت",
                    ),
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
                    color: white,
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
                    color: fuchi,
                  ),
                ),
                label: 'الرئيسية',
              ),


            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: glassy,
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(40),
      //       topRight: Radius.circular(40),
      //     )
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Column(
      //         children: [
      //           Text(
      //               '',
      //             style: TextStyle(
      //               color: fuchi,
      //               fontSize: 18,
      //               fontFamily: 'Tajawal',
      //             ),
      //           ),
      //           Image(
      //               image: AssetImage(
      //                   profile
      //               ),
      //             color: white,
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Text(
      //             '',
      //             style: TextStyle(
      //               color: fuchi,
      //               fontSize: 18,
      //               fontFamily: 'Tajawal',
      //             ),
      //           ),
      //           Image(
      //             image: AssetImage(
      //                 chart
      //             ),
      //             color: white,
      //
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Text(
      //             '',
      //             style: TextStyle(
      //               color: fuchi,
      //               fontSize: 18,
      //               fontFamily: 'Tajawal',
      //             ),
      //           ),
      //           Image(
      //             image: AssetImage(
      //                 calendar
      //             ),
      //             color: white,
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Text(
      //             'الرئيسية',
      //             style: TextStyle(
      //               color: fuchi,
      //               fontSize: 18,
      //               fontFamily: 'Tajawal',
      //             ),
      //           ),
      //           Image(
      //             image: AssetImage(
      //                 home
      //             ),
      //             color: fuchi,
      //           ),
      //         ],
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
