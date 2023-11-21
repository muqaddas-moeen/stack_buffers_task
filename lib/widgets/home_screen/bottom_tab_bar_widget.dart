import 'package:flutter/material.dart';

class BottomBarNavigation extends StatelessWidget {
  BottomBarNavigation(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  int selectedIndex;
  void Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Location',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 106, 104, 218),
      onTap: onItemTapped,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      showUnselectedLabels: true,
    );
  }
}
