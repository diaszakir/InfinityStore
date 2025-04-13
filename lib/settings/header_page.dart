import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:infinitystore/components/icon_widget.dart';

class HeaderPage extends StatelessWidget{
  const HeaderPage({super.key});

  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeader(),
        const SizedBox(height: 20),
        buildUser(context),
        const SizedBox(height: 20),
        buildDarkMode(),
      ],
    );
  }

  Widget buildHeader() {
    return Center(
      child: Text(
        "Profile",
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  // TODO: Add connection with database
  Widget buildUser(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/avatar/avatar_1.png',
          width: 150,
        ),
        Text("Dias Zakir"),
        const SizedBox(height: 10),
        Text("diaszakir1@outlook.com")
      ],
    );
  }

  Widget buildDarkMode() {
    return SwitchSettingsTile(
      title: "Dark Mode", 
      settingKey: keyDarkMode,
      leading: IconWidget(
        color: Color(0xFF642ef3), 
        icon: Icons.dark_mode,
      ),
      onChange: (_) {},
    );
  }
}