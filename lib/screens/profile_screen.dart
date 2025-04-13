import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:infinitystore/components/icon_widget.dart';
import 'package:infinitystore/settings/account_page.dart';
import 'package:infinitystore/settings/header_page.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            HeaderPage(),
            const SizedBox(height: 20,),
            SettingsGroup(
              title: 'GENERAL',
              children: <Widget>[
                AccountPage(),
                const SizedBox(height: 8),
                buildLogout(),
                const SizedBox(height: 8),
                buildDeleteAccount(),
              ],
            ),
            const SizedBox(height: 32),
          ],
        )
      ),
    );
  }
    
    Widget buildLogout() {
      return SimpleSettingsTile(
        title: 'Logout',
        subtitle: '',
        leading: IconWidget(icon: Icons.logout, color: Colors.blueAccent),
        onTap: () => {},
      );
    }

    Widget buildDeleteAccount() {
      return SimpleSettingsTile(
        title: 'Delete Account',
        subtitle: '',
        leading: IconWidget(icon: Icons.delete, color: Colors.redAccent),
        onTap: () => {},
      );
    }
}