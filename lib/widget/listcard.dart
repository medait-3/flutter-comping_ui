
  import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screen/detail-screen.dart';
class cardList extends StatefulWidget {
  const cardList({super.key});

  @override
  State<cardList> createState() => _cardListState();
}

class _cardListState extends State<cardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            mycardList.length,
            (index) {
              final card = mycardList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaisScreen(mycardinfo:card),
                ),
              );
                  },
                  child:ClipRRect(   
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                   decoration: new BoxDecoration(
                                color: Colors.white,
                                 boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 3,
                                    blurRadius: 21,
                                    offset: Offset(21, 113), // changes position of shadow
                                  ),
                                ],
                              ),
                     
                      child:Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            Image.asset(card.img,height: 150,),
                            Container(width: 200,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(card.name,style: TextStyle(color: Colors.black,fontSize: 15,),),
                                        Row(
                                      children: [
                                        Icon(
                                      Icons.star_sharp,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                        Text(card.rating,style: TextStyle(color: Colors.black,fontSize: 10,),),
                                        Text("(124 reviews)",style: TextStyle(color: Colors.grey,fontSize: 10,),),
                                      ],
                                    ),
                                      ],
                                    ),
                                      ClipRRect(   
                                         borderRadius: BorderRadius.circular(10),
                                          child: Container(color: Color.fromARGB(201, 206, 238, 206),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.black,
                                              size: 18,
                                                        ),
                                            ),
                                          ),
                                        ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
