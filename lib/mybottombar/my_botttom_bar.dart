import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/screens/category/category_screen.dart';
import 'package:e_app_1/screens/homepage/home_psge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// This is the stateful widget that the main application instantiates.
class MyBottomBar extends StatefulWidget {

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

/// This is the private State class that goes with MyBottomBar.
class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CategoryScreen(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_grid_2x2,),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'School',
            )
            
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: ,
          selectedIconTheme: IconThemeData(
            color: AppColors.baseDarkPinkColor
          ),
          onTap: _onItemTapped,
        // ),
      ),
    );
  }
}
