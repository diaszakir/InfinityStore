import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:infinitystore/components/icon_widget.dart';

class AccountPage extends StatelessWidget{
  const AccountPage({super.key});

  static const keyLanguage = 'key-language';

  @override
  Widget build(BuildContext context) {
    return SimpleSettingsTile(
      title: 'Account Settings',
      subtitle: 'Privacy, Security, Language',
      leading: IconWidget(color: Colors.greenAccent, icon: Icons.person),
      child: SettingsScreen(
        title: 'Account Settings',
        children: <Widget>[
          const SizedBox(height: 8),
          buildLanguage(),
          const SizedBox(height: 8),
          buildPrivacy(context),
          const SizedBox(height: 8),
          buildSecurity(context),
          const SizedBox(height: 8),
          buildAccountInfo(context),
        ],
      ),
    );
  }

  Widget buildLanguage() {
    return DropDownSettingsTile(
      title: "Language", 
      settingKey: keyLanguage, 
      selected: 1, 
      values: <int, String>{
        1: "English",
        2: "Russian",
        3: "Kazakh"
      },
      // TODO: Add change language
      // onChange: () {},
    );
  }

  Widget buildPrivacy(BuildContext context) {
    return SimpleSettingsTile(
      title: "Privacy",
      subtitle: '',
      leading: IconWidget(color: Colors.blue, icon: Icons.lock)
    );
  }

  Widget buildSecurity(BuildContext context) {
    return SimpleSettingsTile(
      title: "Security",
      subtitle: '',
      leading: IconWidget(color: Colors.red, icon: Icons.security)
    );
  } 

  Widget buildAccountInfo(BuildContext context) {
    return SimpleSettingsTile(
      title: "Payment Info",
      subtitle: '',
      leading: IconWidget(color: Colors.purple, icon: Icons.payment)
    );
  }
}