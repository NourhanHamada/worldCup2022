import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: CircleAvatar(
                        child: Image(image: AssetImage(player),
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: fuchi,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(edit2),
                        color: white,
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                    'نورهان حمادة',
                style: TextStyle(
                  color: white,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'إعدادات',
                        style: TextStyle(
                            color: lightGrey,
                            fontFamily: 'Tajawal',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: fuchi,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Center(
                        child: Text(
                          'حسابي',
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
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(arrowLeft),
                    color: white,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الاسم',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'نورهان حمادة',
                            style: TextStyle(
                              color: lightGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                     const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: glassy,
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text(''),
                          ),
                          Image(image: AssetImage(profile),
                          color: white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 3,
              color: lightGrey,
              thickness: 2,
              indent: 90,
              endIndent: 90,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(arrowLeft),
                    color: white,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'البريد الالكتروني',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'nourhan@gmail.com',
                            style: TextStyle(
                              color: lightGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: glassy,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text(''),
                          ),
                          Image(image: AssetImage(sms),
                            color: white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 3,
              color: lightGrey,
              thickness: 2,
              indent: 90,
              endIndent: 90,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(arrowLeft),
                    color: white,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'رقم الهاتف',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '+2 010 111 111 111',
                            style: TextStyle(
                              color: lightGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: glassy,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text(''),
                          ),
                          Image(image: AssetImage(call),
                            color: white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 3,
              color: lightGrey,
              thickness: 2,
              indent: 90,
              endIndent: 90,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(arrowLeft),
                    color: white,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'المدينة',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'القاهرة، مصر',
                            style: TextStyle(
                              color: lightGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: glassy,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text(''),
                          ),
                          Image(image: AssetImage(location),
                            color: white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 3,
              color: lightGrey,
              thickness: 2,
              indent: 90,
              endIndent: 90,
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
                    color: fuchi,
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
