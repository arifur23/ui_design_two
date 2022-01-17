import 'package:flutter/material.dart';
import 'package:ui_design_two/widgets/single_recent_exchange.dart';

class RecentExchanges extends StatelessWidget {
  const RecentExchanges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .08,
      width: size.width,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30),
      //   color: Colors.white
      // ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          SingleRecentExchange(),
          SingleRecentExchange(),
          SingleRecentExchange(),
          SingleRecentExchange(),
        ],
      ),
    );
  }
}
