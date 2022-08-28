import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Flavour Leaf',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),
          ListTile(
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('Orders'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text('Food'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
