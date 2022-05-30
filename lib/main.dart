import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  var _pages = <Widget>[
    Icon(Icons.home, size: 200, color: Colors.blue),
    Icon(Icons.assignment, size: 200, color: Colors.blue),
    Icon(Icons.person, size: 200, color: Colors.blue),
    Icon(Icons.mail, size: 200, color: Colors.blue),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var black;
    return Scaffold(
      appBar: AppBar(
        title: Text("Navbar"),
      ),
      body: Center(child: _pages.elementAt(_selectedNavbar)),
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: ('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Akun'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: ('Inbox'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
