import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0046FE),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Flavour Leaf',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
            ),
          ListTile(
            textColor: Colors.white,
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            textColor: Colors.white,
            title: const Text('Orders'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            textColor: Colors.white,
            title: const Text('Categories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            textColor: Colors.white,
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
