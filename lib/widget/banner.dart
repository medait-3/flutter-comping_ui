  import 'package:flutter/material.dart';

class blackBanner extends StatefulWidget {
  const blackBanner({super.key});

  @override
  State<blackBanner> createState() => _blackBannerState();
}

class _blackBannerState extends State<blackBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:30,vertical: 21),
          child: 
            ClipRRect(    borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                   height: 140,
                   decoration: new BoxDecoration(
                                color: Color.fromARGB(203, 232, 238, 232),
                                 boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(202, 166, 188, 166),
                                    spreadRadius: 51,
                                    blurRadius: 71,
                                    offset: Offset(3, 23), // changes position of shadow
                                  ),
                                ],
                              ),
                           
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 2 ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                    Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Expore The World",style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: 'p'),),SizedBox(height: 5,),
                        Text("And Find Best Deal!",style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: 'p'),),SizedBox(height: 5,),
                        Text("Get specis Offres",style: TextStyle(color: Colors.grey,fontSize: 11,fontFamily: 'a')),SizedBox(height: 5,),
                        InkWell(
                          onTap:(){},
                          child: new Container(
                              width: 85,
                              height: 30,
                              decoration: new BoxDecoration(
                                color:  Color.fromARGB(201, 136, 155, 136),
                                borderRadius: new BorderRadius.circular(50.0),    boxShadow: [
                                  BoxShadow(
                                      color:  Color.fromARGB(201, 136, 155, 136),
                                    spreadRadius: 1,
                                    blurRadius:21,
                                    offset: Offset(1, 15), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Center(child: new Text('Explore Move', style: new TextStyle(fontSize: 10, color: Colors.white),),),
                          )),
                      ],),
                    ),   ],),
                ),    
              ),),
            )) ),       
               Positioned(
                    top: 5,left: 2,
                    child: Image.asset("assets/watches/a.png",height: 100,)),
            
               Positioned(
                    right: 33,
                    child: Image.asset("assets/watches/b.png",height: 195,)),
        
      ],
    );
  }
}