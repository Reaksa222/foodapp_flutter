
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3/second_line/notificatoinpage.dart';
import 'package:flutter_3/second_line/profile_page.dart';

import 'chatPage.dart';
import 'homepagee.dart';
import 'orderPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // list page
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  // current page
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // animated when body change
      body: SafeArea(
        bottom: false,
        child: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 300),
            child: _pages[_selectedIndex],
            transitionBuilder: (child, animation, seconddaryAnimation) {
              return SharedAxisTransition(
                animation: animation,
                secondaryAnimation: seconddaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                child: child,
              );
            },
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ]
        ),
        margin: EdgeInsets.only(left: 15,right: 15,bottom: 22),
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButtomNavigationBarItem(
                icon: Icons.home,
                label: 'Home',
                index: 0,
            ),
            _buildButtomNavigationBarItem(
                icon: Icons.shopping_bag,
                index: 1,
                label: 'Orders'
            ),
            _buildButtomNavigationBarItem(
                icon: Icons.chat,
                index: 2,
                label: 'Chat'
            ),
            _buildButtomNavigationBarItem(
                icon: Icons.person,
                index: 3,
                label: 'Profile',
            )
          ],
        ),
      ),
    );
  }

  //build bottom navigation bar item
  Widget _buildButtomNavigationBarItem({
    required IconData icon,
    required int index,
    required String label,
  }){
    return InkWell(
      radius: 16,
      onTap: (){
        setState((){
          _selectedIndex= index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        padding: EdgeInsets.symmetric(
            vertical: 12, horizontal: _selectedIndex == index ? 26:12 ,
        ),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              child: Icon(
                icon,
                color: _selectedIndex == index ? Colors.red : Colors.red,
              ),
            ),
            const SizedBox(height: 4),
            if(_selectedIndex == index)
              AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.red ,
                    fontWeight: FontWeight.bold,
                  ),
            ),
              ),
          ],
        ),
      ),
    );
  }
}



