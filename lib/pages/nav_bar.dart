import 'package:flutter/material.dart';
import 'package:myperpustakaan/pages/history_page.dart';
import 'package:myperpustakaan/pages/home_page.dart';
import 'package:myperpustakaan/pages/user_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> myPage = [HomePage(), History(), User()];

  List<BottomNavigationBarItem> myNav = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPage.elementAt(_currentIndex),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 70, 70, 70),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: true,
            onPressed: () {
              setState(() {
                _currentIndex = 0;
              });
            },
            icon:
                _currentIndex == 0
                    ? Icon(Icons.home, size: 30)
                    : const Icon(Icons.home, color: Colors.grey, size: 30),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
            icon:
                _currentIndex == 1
                    ? Icon(Icons.history, size: 30)
                    : const Icon(Icons.history, color: Colors.grey, size: 30),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            },
            icon:
                _currentIndex == 2
                    ? Icon(Icons.person, size: 30)
                    : const Icon(Icons.person, color: Colors.grey, size: 30),
          ),
        ],
      ),
    );
  }
}
