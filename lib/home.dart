import 'package:flutter/material.dart';
import 'package:infinitystore/start_screen.dart';
import 'package:infinitystore/main_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var activeScreen = "start-screen";
  int tab = 0;

  void switchScreen() {
    setState(() {
      activeScreen = "main-screen";
    });
  }

  final List<Widget> _screens = [
    const MainScreen(),
    Center(child: Text('Search')),
    Center(child: Text('Favourite')),
    Center(child: Text('Map')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(switchScreen);
    Widget? bottomBar;

    if (activeScreen == "main-screen") {
      screen = _screens[tab];

      bottomBar = BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 132, 132, 132),
          unselectedItemColor: Colors.grey,
          currentIndex: tab,
          onTap: (int index) {
            setState(() {
            tab = index;
          });
          },
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Map"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          )
        ]
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Infinity Store"),
          backgroundColor: Color.fromARGB(0, 255, 245, 245),
        ),
        backgroundColor: Color.fromARGB(248, 255, 245, 245),
        body: screen,
        bottomNavigationBar: bottomBar,
      ),
    );
  }
}