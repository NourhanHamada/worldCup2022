import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';
import 'package:worldcup2022/model/group.dart';
import 'package:worldcup2022/model/match_date.dart';
// import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      extendBody: true,
      // appBar: AppBar(
      //   centerTitle: false,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions:[ Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 25),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         ImageIcon(
      //           AssetImage(notification),
      //         ),
      //         const SizedBox(
      //           width: 20,
      //         ),
      //         ImageIcon(
      //           AssetImage(searchNormal),
      //         ),
      //       ],
      //     ),
      //   ),],
      //   title: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15),
      //     child: Text('متابعة حية',
      //       style: TextStyle(
      //         color: white,
      //         fontFamily: 'Tajawal',
      //           fontWeight: FontWeight.w500,
      //         fontSize: 24
      //       ),
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ImageIcon(
                      AssetImage(searchNormal),
                      color: white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children:[
                        ImageIcon(
                        AssetImage(notification),
                        color: white,
                      ),
                        Container(
                          width: 13,
                          height: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: fuchi,
                          ),
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: white,
                                fontSize: 10
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  'متابعة حية',
                  style: TextStyle(
                    color: white,
                    fontSize: 25,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              elevation: 0,
              color: maroon,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: 380,
                    height: 160,
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage(player),),
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('فرنسا',
                                  style: TextStyle(
                                  fontSize: 16
                                  ),
                                  ),
                                  Image(image: AssetImage(france),
                                  width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),


                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'فرنسا أبطال كأس',
                            style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            'العالم روسيا',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700

                            ),
                          ),
                          Text(
                            '2018',
                          style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,

                          ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Group(
                      image: argentina,
                      text: "المجموعة C",
                    background: glassy,
                  ),
                 const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.pushNamed(context, '/match');
                      });
                    },
                    child: Group(
                        image: england,
                        text: "المجموعة B",
                      background: glassy,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Group(
                      image: qatar,
                      text: "المجموعة A",
                    background: fuchi,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MatchDate(
                    date: 'الأحد 20 نوفمبر',
                    firstFlag: qatar,
                    firstCountry: 'قطر',
                    firstScore: '1',
                    secondCountry: 'الإكوادور',
                    secondScore: '0',
                    secondFlag: ecuador,
                    status: 'تمت',
                    left: ImageIcon(AssetImage(arrowLeft), color: white,),
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  MatchDate(
                    date: 'الاثنين 21 نوفمبر',
                    firstFlag: senegal,
                    firstCountry: 'سنغال',
                    firstScore: '1',
                    secondCountry: 'هولندا',
                    secondScore: '1',
                    secondFlag: netherlands,
                    status: "67'",
                    left: ImageIcon(AssetImage(arrowLeft), color: white,),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // MatchDate(
                  //   date: 'الجمعة 25 نوفمبر',
                  //   firstFlag: qatar,
                  //   firstCountry: 'قطر',
                  //   firstScore: '1',
                  //   secondCountry: 'الإكوادور',
                  //   secondScore: '0',
                  //   secondFlag: ecuador,
                  //   status: 'تمت',
                  //
                  // ),
                ],
              ),
            ),
          ),
        ],
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
                      Navigator.pushNamed(context, '/match');
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
      //   height: 120,
      //   decoration: const BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      //     boxShadow: [
      //       BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
      //     ],
      //   ),
      //   child: ClipRRect(
      //   borderRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(40.0),
      //   topRight: Radius.circular(40.0),
      //   ),
      //   child: BottomNavigationBar(
      //     selectedLabelStyle: TextStyle(
      //       color: fuchi,
      //     ),
      //       showSelectedLabels: true,
      //       showUnselectedLabels: false,
      //       backgroundColor: glassy,
      //       type: BottomNavigationBarType.fixed,
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage(profile),
      //             color: white,
      //           ),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage(chart),
      //             color: white,
      //           ),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage(calendar),
      //             color: white,
      //           ),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage(home),
      //             color: fuchi,
      //           ),
      //           label: 'الرئيسية',
      //         ),
      //
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
