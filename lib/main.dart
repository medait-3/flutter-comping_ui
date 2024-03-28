import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testapp/widget/appbar.dart';
import 'package:testapp/widget/listcard.dart';

import 'widget/banner.dart';
import 'widget/serchwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollToTopButton(),
    );
  }
}

class ScrollToTopButton extends StatefulWidget {
  @override
  _ScrollToTopButtonState createState() => _ScrollToTopButtonState();
}

class _ScrollToTopButtonState extends State<ScrollToTopButton> {
  final ScrollController _scrollController = ScrollController();
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _showScrollToTopButton = _scrollController.offset >= 100.0; // Change 100.0 to the offset you prefer
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: Duration(milliseconds: 500), // Adjust the duration as needed
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
      SizedBox(height: 20,),  
      appbar(),
      SizedBox(height: 15,),
      bansearch(),
      SizedBox(height: 15,),
      blackBanner(),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text("Popular Tours",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("See All",style: TextStyle(color: Colors.grey,fontSize: 15)),
                  
          ],
        ),
      ),
      SizedBox(height: 5,),
      cardList(),
        ],),
      )    );
  }
}
