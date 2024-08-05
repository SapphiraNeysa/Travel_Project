import 'package:flutter/material.dart';
import 'package:mejakita_project/pages/home.dart';
import 'package:mejakita_project/pages/notification.dart';
import 'package:mejakita_project/pages/search.dart';

class NavBar extends StatefulWidget {
  final int selectedItem;
  NavBar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile'
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 14, 63, 103),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: (index) {
        _changeSelectedNav(context, index);
      },
    );
  }

  void _changeSelectedNav(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
        break;
      case 1:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
          (route) => false,
        );
        break;
        case 2:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => NotifPage()),
          (route) => false,
        );
        break;
      default:
        break;
    }
  }
}
