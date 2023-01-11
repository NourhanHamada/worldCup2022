import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';
import 'package:worldcup2022/model/big_button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image(image:
                  AssetImage(
                      intro,
                  ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                            'كأس العالم',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            fontFamily: 'Tajawal'
                          ),
                        ),
                        Text(
                            'قطر 2022',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                            'تغطية لأحداث كأس العالم',
                          style: TextStyle(
                            color: lightGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              fontFamily: 'Tajawal'

                          ),
                        ),
                        Text(
                            'و متابعة حية لجميع المبارايات و الفعاليات',
                          style: TextStyle(
                            color: lightGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                              fontFamily: 'Tajawal'
                          ),
                        ),
                        Text(
                            'أولًا بأول',
                          style: TextStyle(
                            color: lightGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                              fontFamily: 'Tajawal'

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'مستخدم جديد',
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BigButton(text: 'تسجيل الدخول'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
