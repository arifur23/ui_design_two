import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleTransaction extends StatelessWidget {
  const SingleTransaction({Key? key, required this.iconData, required this.title, required this.detail, required this.amount}) : super(key: key);

  final IconData iconData;
  final String title;
  final String detail;
  final String amount;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFF122138) ,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(iconData,color: Colors.white,size: 30,),
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   Text(title,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  Text(detail ,style: TextStyle(fontSize: 13,color: Colors.black.withOpacity(.3)))
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
               Text(amount,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              Text('to 150.000 NGN',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)),)
            ],
          )
        ],
      ),
    );
  }
}
