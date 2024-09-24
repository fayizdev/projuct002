import 'package:flutter/material.dart';
import 'package:projuct002/view/book_mark_screen/book_marks_screen.dart';
import 'package:projuct002/view/home_screen/home_screen.dart';
import 'package:projuct002/view/notification_page/notification_page.dart';
import 'package:projuct002/view/profile_screen/profile_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screens = [
    HomeScreen(),
    BookMarksScreen(),
    NotificationsScreen(),
    ProfileScreen()
  ];
  int selectesTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectesTab],
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectesTab,
          onTap: (value) {
            setState(() {});
            selectesTab = value;
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.bookmark_outline),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_none_outlined),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outline),
                label: ""),
          ]),
    );
  }
}
