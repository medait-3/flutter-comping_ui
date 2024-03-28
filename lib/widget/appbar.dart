import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Hi,Nanas!",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text("Let's Travel Now",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ],),
                Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
                size: 25,
              ),
          ],
        ),
      );
  }
}