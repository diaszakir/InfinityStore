import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startApp, {super.key});
  
  final void Function() startApp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome to InfinityStore!"),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 255, 245, 245),
              foregroundColor: Color.fromARGB(255, 198, 99, 6)
            ),
            child: const Text(
              "Login"
            ),
          ),
          ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 255, 245, 245),
              foregroundColor: Color.fromARGB(255, 198, 99, 6)
            ),
            child: const Text(
              "Register"
            ),
          ),
          // delete after implementation login and register
          ElevatedButton(
            onPressed: startApp, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 255, 245, 245),
              foregroundColor: Color.fromARGB(255, 198, 99, 6)
            ),
            child: const Text(
              "Continue" 
            ),
          )
        ],
      ),
    );
  }
}