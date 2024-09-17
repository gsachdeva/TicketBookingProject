import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_project/utils/app_layout.dart';
import 'package:ticket_project/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      margin: EdgeInsets.only(right: 17,top: 5),
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 17),
      decoration: BoxDecoration(
        color: Styles.colorPrimary,
        borderRadius: BorderRadius.circular(24),
        boxShadow:[
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 5,
            color: Colors.grey.shade200,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.colorPrimary,
                image: const DecorationImage(
                    fit:BoxFit.fill,
                    image: AssetImage("assets/images/one.jpg")
                ),
              ),
            ),
            Gap(15),
            Text("Open Space",
            style: Styles.headingStyle2.copyWith(color: Styles.kakiColor),
            ),
            Gap(5),
            Text("London",
            style: Styles.headingStyle3.copyWith(color: Colors.white),
            ),
            Gap(8),
            Text("\$40/Night",
            style: Styles.headingStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
