import 'package:flutter/material.dart';
import 'package:ui_design_two/widgets/account_single_card.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .20,
      width: size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          AccountSingleCard(),
          AccountSingleCard(),
          AccountSingleCard()
        ],
      ),
    );
  }
}
