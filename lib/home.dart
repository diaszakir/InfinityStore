import 'package:flutter/material.dart';
import 'package:infinitystore/screens/start_screen.dart';
import 'package:infinitystore/screens/main_screen.dart';
import 'package:infinitystore/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // static const keyDarkMode = 'key-dark-mode';
  var activeScreen = "start-screen";
  int tab = 0;

  void switchScreen() {
    setState(() {
      activeScreen = "main-screen";
    });
  }

  final List<Widget> _screens = [
    const MainScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Favourite')),
    const Center(child: Text('Map')),
    const ProfileScreen(),
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
        backgroundColor: const Color.fromARGB(0, 255, 245, 245),
        currentIndex: tab,
        onTap: (int index) {
          setState(() {
            tab = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Infinity Store"),
            backgroundColor: const Color.fromARGB(0, 255, 245, 245),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 245, 245),
          body: screen,
          bottomNavigationBar: bottomBar,
        ),
      );
    }
  }
