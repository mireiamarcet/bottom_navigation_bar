import 'package:bottom_navigation_bar/screens/pictures_screen.dart';
import 'package:bottom_navigation_bar/screens/profile_screen.dart';
import 'package:bottom_navigation_bar/screens/news_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  var _labels = ['Pictures', 'News', 'Profile'];
  static List<Widget> _widgetOptions = <Widget>[
    PicturesScreen(),
    NewsScreen(),
    ProfileScreen(),
  ];
  bool unreadNews = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_labels[index] == "News") {
        unreadNews = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined),
              activeIcon: Icon(Icons.image),
              label: "Images"),
          BottomNavigationBarItem(
              icon: unreadNews
                  ? Stack(children: <Widget>[
                      Icon(Icons.ballot_outlined),
                      Positioned(
                          top: -1.0,
                          right: -1.0,
                          child: Icon(Icons.brightness_1,
                              size: 12.0, color: Colors.blue))
                    ])
                  : Icon(Icons.ballot_outlined),
              activeIcon: Icon(Icons.ballot),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      appBar: AppBar(
        title: Text(_labels.elementAt(_selectedIndex)),
      ),
    );
  }
}
