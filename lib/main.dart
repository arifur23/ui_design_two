import 'package:flutter/material.dart';
import 'package:ui_design_two/widgets/navigation.dart';

void main() {
  runApp(const  MyHome());
}


class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF9F9F9),
          iconTheme: const IconThemeData(
              size: 20,
              color: Colors.red
          ),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF9F9F9),
              foregroundColor: Colors.black,
              elevation: 0,
              actionsIconTheme: IconThemeData(
                  color: Colors.black
              )
          )
      ),
      home:  const NavigationWidget(),
    );
  }
}
