import 'package:bottomnav/bottom_nav.dart';
import 'package:bottomnav/screens/home.dart';
import 'package:bottomnav/screens/search.dart';
import 'package:bottomnav/screens/settings.dart';
import 'package:bottomnav/screens/user.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> pageList = [Home(), Search(), User(), Settings()];
  int pageIndex = 0;
  Color color = Colors.white;
  void changePage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.black),
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNav(
                  index: 0,
                  onTap: () {
                    changePage(0);
                  },
                  iconColor: pageIndex == 0 ? Colors.redAccent : Colors.white,
                  icon: Icons.home,
                ),
                BottomNav(
                  index: 1,
                  onTap: () {
                    changePage(1);
                  },
                  iconColor: pageIndex == 1 ? Colors.redAccent : Colors.white,
                  icon: Icons.search,
                ),
                BottomNav(
                  index: 2,
                  onTap: () {
                    changePage(2);
                  },
                  iconColor: pageIndex == 2 ? Colors.redAccent : Colors.white,
                  icon: Icons.person,
                ),
                BottomNav(
                  index: 3,
                  onTap: () {
                    changePage(3);
                  },
                  iconColor: pageIndex == 3 ? Colors.redAccent : Colors.white,
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
