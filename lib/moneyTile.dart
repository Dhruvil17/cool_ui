import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget moneyTile(Color color, String title, String description, String cost) {
  return Container(
    padding: EdgeInsets.fromLTRB(25, 20, 25, 30),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            Container(
              color: Colors.white,
              width: 60,
              height: 15,
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          description,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade300,
              fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cost.toString(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
              fontSize: 28),
        ),
      ],
    ),
  );
}

var colorList = [
  Color(0xffBD31F7),
  Color(0xff0041C4),
  Color(0xffFFA457),
];

Widget moneyList(var context) {
  return Container(
    width: 100,
    margin: EdgeInsets.only(top: 25),
    height: 190,
    child: Swiper(
      itemCount: 3,
      itemBuilder: (_, i) {
        return moneyTile(
            colorList[i], "Earnings", "Net Profits Of March 2020", "₹ 6,000");
      },
      pagination: new SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          color: Color(0x00BD31F7),
          activeColor: Color(0x00BD31F7),
        ),
      ),
      control: new SwiperControl(
        color: Color(0x00BD31F7),
      ),
      scale: 0.8,
      viewportFraction: 0.8,
    ),
  );
}
