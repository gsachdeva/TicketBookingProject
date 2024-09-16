import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_project/screens/ticket_view.dart';
import 'package:ticket_project/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headingStyle3,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: Styles.headingStyle,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/flight.png"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFFFFFFF)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headingStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights",style: Styles.headingStyle2,),
                    InkWell(
                        onTap: () {
                          print("You are tapped");
                        },
                        child: Text("View All",style: Styles.textStyle.copyWith(color: Styles.colorPrimary),)
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children: [
                TicketView(),
                TicketView(),
                TicketView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
