import 'package:flutter/material.dart';

class SingleRecentExchange extends StatelessWidget {
  const SingleRecentExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          height: size.height * .1,
          width: size.width *.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7,top: 7,bottom: 7),
              child: Stack(
                children:  [
                  Container(
                    height: size.height * .05,
                    width: size.width * .10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        image: AssetImage('images/image.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )
                  ),
                  Positioned(
                      left: 29,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white
                        ),
                        child: const Icon(Icons.star,color: Color(0xFFFEBE41),size: 13,),
                      )
                  )
                ],
              ),
            ),
            const SizedBox(width: 13,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children:  [
                      const Text("Arifur",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      const SizedBox(width: 7,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.indigoAccent
                        ),
                        child: const Icon(Icons.check,color: Colors.white,size: 8,),
                      )
                    ],
                  ),
                ),
                 Text('200USD',style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(.3))),
                 Text('Need NGN @6.40',style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(.3)))
              ],
            )
          ],
        ),
      ),
    );
  }
}

