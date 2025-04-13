import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:infinitystore/components/icon_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleSettingsTile(
      title: 'Account Information',
      subtitle: '',
      leading: IconWidget(color: Colors.greenAccent, icon: Icons.person),
      child: SettingsScreen(
        title: 'Account Settings',
        children: <Widget>[
          Container(
            alignment: Alignment.center, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/avatar/avatar_1.png'),
                ),
                SizedBox(height: 20),

                Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Name should be imported from db"),

                SizedBox(height: 20),
                Text("Surname", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Surname should be imported from db"),

                SizedBox(height: 20),
                Text("Birth Date", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Birth Date should be imported from db"),

                SizedBox(height: 20),
                Text("Email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Email should be imported from db"),

                SizedBox(height: 20),
                Text("Registration Date", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Registration Date should be imported from db"),

                SizedBox(height: 20),
                Text("City", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("City should be imported from db"),

                SizedBox(height: 20),
                Text("Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 10),
                Text("Address should be imported from db"),

                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit), 
                  label: Text("Edit profile")
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
