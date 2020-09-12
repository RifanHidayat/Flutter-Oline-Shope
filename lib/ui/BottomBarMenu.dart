import 'package:ecommerce/ui/AkunScreen.dart';
import 'package:ecommerce/ui/Home.dart';
import 'package:ecommerce/ui/SearchProducScreen.dart';
import 'package:flutter/material.dart';

class PageHomeBottomMenu extends StatefulWidget {
  @override
  _PageHomeBottomMenuState createState() => _PageHomeBottomMenuState();
}
class _PageHomeBottomMenuState extends State<PageHomeBottomMenu> {
  int currentIndex = 0;
  final List<Widget> _listmenu = [
    HomeScreen(),
    SearchScreen(),
    AkunScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _listmenu[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Akun')
          ),

        ],
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
