import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
              Tab(text: 'Tab 4'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),  
            Center(child: Text('Content for Tab 2')),  
            Center(child: Text('Content for Tab 3')),  
            Center(child: Text('Content for Tab 4')),  
          ],
        ),
      ),
    );
  }
}