import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Second screen"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.event)),
                Tab(icon: Icon(Icons.zoom_out_map_sharp)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.event),
              Icon(Icons.zoom_out_map_sharp),
            ],
          ),
        ),
    );
  }
}