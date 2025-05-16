import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kenkeputa/core/router/route_name.dart';
import 'package:kenkeputa/core/router/routes.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key, required this.screen});

  final Widget screen;

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedindex = 0;

  static final routes = [
    RouteName.homeScreen,
    RouteName.bookingsScreen,
    RouteName.chatsScreen,
    RouteName.saveScreen,
    RouteName.profileScreen,
  ];

  static final _items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month), label: 'Bookings'),
    const BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
    const BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Save'),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screen,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedindex,
          type: BottomNavigationBarType.fixed,
          items: _items,
          onTap: (index) {
            _selectedindex = index;
            context.goNamed(_routes[index]);
          }),
    );
  }
}
