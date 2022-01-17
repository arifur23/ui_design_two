import 'package:flutter/material.dart';

class AccountSingleCard extends StatelessWidget {
  const AccountSingleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: size.height * .20,
      width: size.width * .39,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('\$5000',style: TextStyle(letterSpacing: .5,fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                Text('Primary Account',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color:  Colors.black.withOpacity(.4)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Container(
                  height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/image.jpg',
                        fit: BoxFit.cover,),
      )
                ),
                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFE7EAF1)
                  ),
                  child: const Center(child: Text('Top up',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
