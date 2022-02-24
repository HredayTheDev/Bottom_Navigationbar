import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    Text('Settings Page',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Flutter BottomNavigationBar Example'),
            backgroundColor: Colors.teal),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                backgroundColor: Colors.teal,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 30,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
