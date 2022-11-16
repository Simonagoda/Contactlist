import 'package:contactlist/widgets/home_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/favoriote_widget.dart';
import '../widgets/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  _setIndex(int index) => setState(() => _selectedIndex = index);
  final List<Widget> _selectedWidget = const [
    HomeWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("My Contacts"),
        centerTitle: false,
      ),
      body: _selectedWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => _setIndex(value),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ""),
        ],
      ),
    );
  }
}
