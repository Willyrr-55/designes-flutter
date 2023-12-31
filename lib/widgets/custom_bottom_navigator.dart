import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, size: 30,),
          label: 'Calendar'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart_outlined, size: 30),
          label: 'Statistics'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined, size: 30),
          label: 'Users'
          )
      ],
     
    );
  }
}