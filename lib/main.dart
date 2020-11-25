import 'package:flutter/material.dart';
import 'package:Wavefront-main/pages/wavefront.dart';

void main() {
  runApp( MaterialApp(
    home: FinalProyec(),
  ));
}

class FinalProyec extends StatefulWidget {
  @override
  _UTBShortPhats createState() => _UTBShortPhats();
}

class _UTBShortPhats extends State<FinalProyec> with TickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller =  TabController(length: 1,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  Text("WaveFront"),
          backgroundColor: Colors.black,
          bottom:  TabBar(
            tabs: <Widget>[
              Tab(
                icon:  Icon(Icons.router),
              ),
            ],
            controller: controller,
          ),
        ),
        body:  TabBarView(
            children: <Widget>[
              Wavefront(),
            ],
            controller: controller
        )
    );
  }
}
