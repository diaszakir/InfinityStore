import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget{
  const IconWidget({super.key, required this.color, required this.icon});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(
        icon, 
        color: Colors.white
      ),
    );
  }
}