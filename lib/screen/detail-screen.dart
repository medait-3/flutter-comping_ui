
import 'package:flutter/material.dart';

import '../data/data.dart';


class DetaisScreen extends StatefulWidget {
    final Cardlist mycardinfo;

  const DetaisScreen({super.key, required this.mycardinfo});

  @override
  State<DetaisScreen> createState() => _DetaisScreenState();
}

class _DetaisScreenState extends State<DetaisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(backgroundColor: Colors.transparent,centerTitle: true,
title: Text("Details",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),),
           body: Padding(
             padding: const EdgeInsets.all(10),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container( 
              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(50.0),    boxShadow: [
                                  BoxShadow(
                                      color:  Colors.white,
                                    spreadRadius: 10,
                                    blurRadius:13,
                                    offset: Offset(0, 11), // changes position of shadow
                                  ),
                                ],
                              ),
                  child: Image.asset(widget.mycardinfo.img,height: 300,)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(widget.mycardinfo.name,style: TextStyle(color: Colors.black,fontSize: 30,),),
                                        ClipRRect(   
                                           borderRadius: BorderRadius.circular(10),
                                            child: Container(
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.grey,
                                                size: 30,
                                                          ),
                                              ),
                                            ),
                                          ),
                                    ],
                                  ), ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20,top:5 ),
                                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                                Text("Raiting",style: TextStyle(color: Colors.black,fontSize: 18,),),SizedBox(height: 5,),
                                             Row(
                                            children: [
                                              Icon(
                                            Icons.star_sharp,
                                            color: Colors.amber,
                                            size: 15,
                                          ),  Icon(
                                            Icons.star_sharp,
                                            color: Colors.amber,
                                            size: 15,
                                          ),  Icon(
                                            Icons.star_sharp,
                                            color: Colors.amber,
                                            size: 15,
                                          ),
                                              Text(widget.mycardinfo.rating,style: TextStyle(color: Colors.black,fontSize: 12,),),
                                              Text("(124 reviews)",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                            ],
                                          ),
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                                Text("Price",style: TextStyle(color: Colors.black,fontSize: 18,),),SizedBox(height: 5,),
                                             Row(
                                            children: [
                                            
                                              Text("\$ 531",style: TextStyle(color: Colors.black,fontSize: 15,),),
                                              Text("/night",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                            ],
                                          ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                       Padding(
                                         padding: const EdgeInsets.all(10),
                                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("Description",style: TextStyle(color: Colors.black,fontSize: 18,),),SizedBox(height: 8,),
                                             Text(widget.mycardinfo.descripton,style: TextStyle(color: Colors.grey,fontSize: 16,),),
                                           ],
                                         ),
                                       ),
           Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(    
            borderRadius: BorderRadius.circular(31),
            child:   Container(  
              decoration: new BoxDecoration(
                                color:  Color.fromARGB(200, 93, 117, 93),
                                borderRadius: new BorderRadius.circular(50.0),    boxShadow: [
                                  BoxShadow(
                                      color:  Color.fromARGB(201, 136, 155, 136),
                                    spreadRadius: 5,
                                    blurRadius:21,
                                    offset: Offset(1, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                              width: double.infinity,
              height:55,
            child: Center(
              child:    Text("Booking Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14),),
       ),),)),
                                           
                              
              ],
             ),
           ),
    );
  }
}