import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // ignore: unused_field
  int _selectedIndex = 0;
  // ignore: unused_field
  static final List<Widget>_widgetOptions =<Widget>[
    // const Text('Home'),
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Container(

    // )
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My Tickets'),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex]
        // child: Text('Home')
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type:BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home'),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search'),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Ticket'),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile'),
          ]
        ),
    );
  }
}

// import 'package:flutter/cupertino.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({ Key? key }) : super(key: key);
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }