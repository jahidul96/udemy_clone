import 'package:flutter/material.dart';
import 'package:udemy_clone/screens/account.dart';
import 'package:udemy_clone/screens/home.dart';
import 'package:udemy_clone/screens/my_learning.dart';
import 'package:udemy_clone/screens/search.dart';
import 'package:udemy_clone/screens/wish_list.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'mainpage';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const SearchScreen(),
    const MyLearning(),
    const WishListScreen(),
    const AccountScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),

      // bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(
                Icons.star,
                size: 25,
              ),
            ),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(
                Icons.play_circle_filled,
                size: 25,
              ),
            ),
            label: 'My Learning',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(
                Icons.favorite_border,
                size: 25,
              ),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(
                Icons.account_circle,
                size: 27,
              ),
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
