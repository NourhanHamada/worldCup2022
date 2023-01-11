import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(player3),
              width: double.infinity,),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                  right: 60,
                  bottom: 100
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, '/news');
                        });
                      },
                      child:
                    Image(image: AssetImage(arrowLeft),
                      color: white,
                    ),
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
                                  share
                              ),
                              color: maroon,
                              width: 35,
                            ),
                          ],
                        ),
                       const SizedBox(
                          height: 30,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: fuchi,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:
                                Text('')
                            ),
                            Image(
                              image: AssetImage(
                                  archive
                              ),
                              color: white,
                              width: 35,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    'مواجهة ودية بين منتخب الامارات \n و نظيره الارجنتيني',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
                ),
               const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      '42',
                    style: TextStyle(
                      color: white,
                    ),
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage(message),
                      color: white,
                      width: 18,),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '315',
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage(heart),
                      color: white,
                      width: 18,),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1403',
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage(eye),
                      color: white,
                      width: 18,),
                   const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          'أحمد محمد',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Tajawal',
                            fontSize: 16
                          ),
                        ),
                        Text(
                          '15 نوفمبر 2022',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: lightGrey,
                            fontSize: 12
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      child: Image(image: AssetImage(player2),
                        width:40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'أعلن ليونيل سكالوني المدير الفني للمنتخب \n الارجنتيني قائمة بلاده استعدادا لمنافسات \n كأس العالم 2022، و المقرر إقامته خلاص شهري \n نوفمبر و ديسمبر في قطر.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: white,
                    fontSize: 19,
                    fontFamily: 'Tajawal'
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'شهدت القائمة تواجد ليونيل ميسي لاعب باريس \n سان جيرمن الفرنسي، فضلا عن آنخيل دي ماريا \n لاعب يوفنتوس الايطالي، كما تواجد باولو و ديبالا  \n في قائمة راقصو التانجو.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: white,
                      fontSize: 19,
                      fontFamily: 'Tajawal'
                  ),
                ),
              ],
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
                    color: fuchi,
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
