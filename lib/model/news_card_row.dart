import 'package:flutter/material.dart';
import 'package:worldcup2022/constants.dart';

class NewsCardRow extends StatefulWidget {

  var image;
  var line1;
  var line2;
  var line3;
  var line4;

  NewsCardRow({
    this.image,
    this.line1,
    this.line2,
    this.line3,
    this.line4
});
  
  
  @override
  State<NewsCardRow> createState() => _NewsCardRowState();
}

class _NewsCardRowState extends State<NewsCardRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(archive),
        color: white,
        width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
                'قائمة البرازيل لكأس العالم',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Tajawal'
              ),
            ),
           const SizedBox(
              height: 3,
            ),
            Text(
                '2022:من انضم إلى نيمار',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Tajawal'
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'و فينسوس جونيور ورافينيا؟',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Tajawal'
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'الاثنين - 07 نوفمبر 2022 - 18:49',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: lightGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Tajawal'
              ),
            ),
          ],
        ),
        Image(image:
        AssetImage(player2),
        ),
        ],
    );
  }
}
