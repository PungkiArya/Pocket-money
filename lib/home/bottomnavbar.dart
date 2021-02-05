import 'package:flutter/material.dart';
import 'package:i_rich/home/account.dart';
import 'package:i_rich/home/event.dart';
import 'package:i_rich/home/home.dart';
import 'package:i_rich/home/note.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    NotePage(),
    TodoList(),
    AccountPage()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.lightBlueAccent,
                icon: new Icon(Icons.home),
                // ignore: deprecated_member_use
                title: new Text("Home")),
            BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent,
                icon: new Icon(Icons.note),
                // ignore: deprecated_member_use
                title: new Text("Note")),
            BottomNavigationBarItem(
                backgroundColor: Colors.green.shade500,
                icon: new Icon(Icons.event_note_rounded),
                // ignore: deprecated_member_use
                title: new Text("Event")),
            BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: new Icon(Icons.account_circle),
                // ignore: deprecated_member_use
                title: new Text("Account")),
          ],
        ));
  }
}
