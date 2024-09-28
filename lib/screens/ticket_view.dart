import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_project/utils/app_layout.dart';
import 'package:ticket_project/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key,required this.ticket}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(

      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /* Showing the blue part of card */
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: Styles.headingStyle3
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print(
                                "The width is ${constraints.constrainWidth()}");
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          }),
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ))),
                      ])),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN",
                          style: Styles.headingStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  Gap(3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          textAlign: TextAlign.start,
                          style: Styles.headingStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "8H 30M",
                        style:
                            Styles.headingStyle4.copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: Styles.headingStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            /* Showing the orange part of card */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      )
                    )),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                        const SizedBox(
                          width: 5, height: 1,
                          child: DecoratedBox(decoration: BoxDecoration(
                              color: Colors.white
                          )),
                        )),
                      );
                    }
                    ),
                  )),

                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
                        )),
                  )
                ],
              ),
            ),
            /* Showing the orange part of card */
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 10),
              child: Column(
                children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "1 May",
                           style: Styles.headingStyle3.copyWith(color:Colors.white),
                         ),
                         const Gap(5),
                         Text(
                           "DATE",
                           style: Styles.headingStyle4.copyWith(color:Colors.white),
                         ),
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text(
                           "08:00 AM",
                           style: Styles.headingStyle3.copyWith(color:Colors.white),
                         ),
                         const Gap(5),
                         Text(
                           "Departure Time",
                           style: Styles.headingStyle4.copyWith(color:Colors.white),
                         ),
                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Text(
                           "23",
                           style: Styles.headingStyle3.copyWith(color:Colors.white),
                         ),
                         const Gap(5),
                         Text(
                           "Number",
                           style: Styles.headingStyle4.copyWith(color:Colors.white),
                         ),
                       ],
                     )
                   ],
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
