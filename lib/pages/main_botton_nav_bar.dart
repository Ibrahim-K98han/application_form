import 'package:application_form/pages/screen_five.dart';
import 'package:application_form/pages/screen_foure.dart';
import 'package:application_form/pages/screen_one.dart';
import 'package:application_form/pages/screen_three.dart';
import 'package:application_form/pages/screen_two.dart';
import 'package:flutter/material.dart';
class MainBottomNavbar extends StatefulWidget {
  const MainBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavbar> createState() => _MainBottomNavbarState();
}

class _MainBottomNavbarState extends State<MainBottomNavbar> {
  int _selectedScreen = 0;
  final List<Widget> _screens = const [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    ScreenFoure(),
    ScreenFive()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _screens[_selectedScreen]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index) {
          _selectedScreen = index;
          setState(() {});
        },
        elevation: 4,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined), label: 'One'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Two'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'Three'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Four'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Five'),
        ],
      ),
    );
  }
}

