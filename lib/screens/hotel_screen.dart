import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_project/utils/app_layout.dart';
import 'package:ticket_project/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key,required this.hotel}):super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 17,top: 5),
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 17),
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
                image: DecorationImage(
                    fit:BoxFit.fill,
                    image: AssetImage(
                        "assets/images/${hotel['image']}"
                    )
                ),
              ),
            ),
            const Gap(15),
            Text(hotel['place'],
            style: Styles.headingStyle2.copyWith(color: Styles.kakiColor),
            ),
            const Gap(5),
            Text(hotel['destination'],
            style: Styles.headingStyle3.copyWith(color: Colors.white),
            ),
            const Gap(8),
            Text("\$40/Night",
            style: Styles.headingStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
