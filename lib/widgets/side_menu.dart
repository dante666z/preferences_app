import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeaer(),
          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('Home'),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('People'),
            onTap: () {
              print('people');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeaer extends StatelessWidget {
  const _DrawerHeaer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menu-img.jpeg'), fit: BoxFit.cover)),
      child: Container(),
    );
  }
}
