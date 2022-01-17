import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_two/widgets/account_cards.dart';
import 'package:ui_design_two/widgets/recent_exchanges.dart';
import 'package:ui_design_two/widgets/transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.search_rounded,size: 25,color: Colors.black,)
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add))
        ],
        title: const Text('PayXenda',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const AccountCard(),
                  Padding(
                    padding:const EdgeInsets.only(top: 15,bottom: 15),
                    child: Text('Recent Xchange',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)),),
                  ),
                  const RecentExchanges(),

                ],
              ),
            ),
          ),
          const Transactions()
        ],
      ),
    );
  }
}
