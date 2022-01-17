import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design_two/widgets/single_transaction.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .39,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 6,
                width: 100,
                decoration:  BoxDecoration(
                  color: const Color(0xFFDADADA),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                       Text('Transactions'),
                       Text('See all')
                    ],
                  ),
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: const [
                     SingleTransaction(iconData: Icons.import_export_outlined,title: 'Exchange',detail: 'Exchange',amount: '\$200',),
                     SingleTransaction(iconData: Icons.app_blocking,title: 'Apple Store',detail: 'Received',amount: '\$200',),
                     SingleTransaction(iconData: Icons.dashboard_customize,title: 'Amazon Pay',detail: 'Send',amount: '\$200',),
                     SingleTransaction(iconData: Icons.calendar_today,title: 'Bkash',detail: 'Due',amount: '\$200',)
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
