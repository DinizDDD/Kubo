import 'package:flutter/material.dart';
import 'package:kubo/ui/Colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.main_color, 
      type: BottomNavigationBarType.fixed,  

      selectedItemColor: AppColors.white_color,
      unselectedItemColor: AppColors.white_color,

      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}