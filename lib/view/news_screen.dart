import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';
import 'package:worldcup2022/model/news_card_row.dart';
import 'package:worldcup2022/model/news_card_stack.dart';

import '../model/group.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  color: glassy,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 85, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'البحث عن الفرق والمبارايات واللاعبين',
                        style: TextStyle(
                          color: darkGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image(
                        image: AssetImage(searchNormal),
                        color: darkGrey,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: glassy,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text('')),
                    Image(
                      image: AssetImage(spain),
                      width: 25,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: glassy,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text('')),
                    Image(
                      image: AssetImage(france),
                      width: 25,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: glassy,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text('')),
                    Image(
                      image: AssetImage(argentina),
                      width: 25,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: glassy,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text('')),
                    Image(
                      image: AssetImage(germany),
                      width: 25,
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 105,
                        height: 50,
                        decoration: BoxDecoration(
                          color: fuchi,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text('')),
                    Row(
                      children: [
                        Text(
                          'البرازيل',
                          style: TextStyle(color: white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image(
                          image: AssetImage(brazil),
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    child: Column(
                      children: [
                        NewsCardRow(),
                       const SizedBox(
                          height: 20,
                        ),
                        NewsCardRow(),
                        const SizedBox(
                          height: 20,
                        ),
                        NewsCardRow(),
                        const SizedBox(
                          height: 20,
                        ),
                        NewsCardRow(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                  'أخبار هامة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Tajawal'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      child: NewsCardStack(
                        image: AssetImage(franceNews),
                        news: 'مواجهة ودية بين منتخب',
                        news2: 'الإمارات ونظيره الأرجنتيني',
                      ),
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, '/newsDetails');
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    NewsCardStack(
                      image: AssetImage(franceNews),
                      news: 'فرنسا تعلن استبعاد نكونكو',
                      news2: 'من كأس العالم للإصابة',
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