import 'package:flutter/material.dart';
import 'second.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class scrollingDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 330,
          color: Color(0xff0040C0),
        ),
        orderBar(),
      ],
    );
  }
}

class orderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          height: 25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 27,
                ),
              ),
              Expanded(
                flex: 9,
                child: Center(
                  child: Text(
                    "Trip ID 2022",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 500,
          child: Swiper(
            itemCount: 3,
            itemBuilder: (_, i) {
              return tripCard();
            },
            pagination: SwiperPagination(
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
        ),
      ],
    );
  }
}

class tripCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 3,
            color: Colors.grey.shade500.withOpacity(0.35),
          )),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 110,
                    progressColor: Color(0xff47D187),
                    percent: 0.84,
                    backgroundColor: Colors.grey.shade200,
                    center: Container(
                      height: 79,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFC7979),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "Order ID 12",
                        style: t(Colors.black, 23, FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You are running on time",
                        style: t(Colors.grey.shade600, 15, FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  height: 130,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: threeTiles(
                            Image.asset("images/fuel.png"), "1200km", "Total Dist.",Colors.purple),),
                      Expanded(
                        child: threeTiles(
                            Image.asset("images/clock.jfif"), "48:09:12", "Duration",Colors.blue),),
                      Expanded(
                        child: threeTiles(
                            Image.asset("images/dashboard.png"), "1200km", "Avg. Speed",Colors.red),),
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  child: Container(
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          "View Details",
                          style: t(Colors.green,18,FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class threeTiles extends StatelessWidget {
  var icon;
  String title, description;
  Color color;
  threeTiles(this.icon, this.title, this.description,this.color);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: CircularPercentIndicator(
            progressColor: color,
            percent: 0.85,
            radius: 70,
            center: FractionallySizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: icon,
              ),
              heightFactor: 0.85,
            ),
          ),
        ),
        SizedBox(height: 15,),
        FittedBox(child: Text(title,style: t(Colors.black,14,FontWeight.w400),)),
        SizedBox(height: 3,),
        FittedBox(child: Text(description,style: t(Colors.black,13,FontWeight.w300),)),

      ],
    );
  }
}