import 'package:flutter/material.dart';
import 'package:ui_design_two/screens/cart_screen.dart';
import 'package:ui_design_two/screens/home_screen.dart';
import 'package:ui_design_two/screens/profile_screen.dart';
import 'package:ui_design_two/screens/setting_screen.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

enum BottomBarIcon{
  home,
  setting,
  account,
  cart
}

class _NavigationWidgetState extends State<NavigationWidget> {
  BottomBarIcon bottomBarIcon = BottomBarIcon.home;
  List<Widget> displayItems = const [
    HomeScreen(),
    SettingScreen(),
    ProfileScreen(),
    CartScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: displayItems[selectedIndex],
        bottomNavigationBar: Container(
          // margin: const EdgeInsets.all(2),
          height: 80,
          decoration: const BoxDecoration(
            color:  Color(0xff262B63),
            borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            // boxShadow: <BoxShadow>
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.home;
                        selectedIndex = 0;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.home,color: bottomBarIcon == BottomBarIcon.home ? Colors.white : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Home',style: TextStyle(color: bottomBarIcon == BottomBarIcon.home ? const Color(0xff73C3D9) : const Color(0xff4B4F7F))
                            )],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.setting;
                        selectedIndex = 1;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.settings,color: bottomBarIcon == BottomBarIcon.setting ? Colors.white : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Settings',style: TextStyle(color: bottomBarIcon == BottomBarIcon.setting ? const Color(0xff73C3D9) : const Color(0xff4B4F7F)))
                          ],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.account;
                        selectedIndex = 2;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.supervised_user_circle,color: bottomBarIcon == BottomBarIcon.account ? Colors.white : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Profile',style: TextStyle(color: bottomBarIcon == BottomBarIcon.account ? const Color(0xff73C3D9) : const Color(0xff4B4F7F))
                            )],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.cart;
                        selectedIndex = 3;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.shopping_cart,color: bottomBarIcon == BottomBarIcon.cart ? Colors.white : const Color(0xff4B4F7F),),
                            const SizedBox(height: 7,),
                            Text('Cart',style: TextStyle(color: bottomBarIcon == BottomBarIcon.cart ? const Color(0xff73C3D9) : const Color(0xff4B4F7F)),)
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}
