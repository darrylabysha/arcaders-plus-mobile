import 'package:flutter/material.dart';
import 'package:arcaders_plus/screens/menu.dart';
import 'package:arcaders_plus/screens/gamelist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 47, 93, 130),
            ),
            child: Column(
              children: [
                Text(
                  'Arcaders+',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Store all of your favorite games for your new odyssey here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,              // Set the font size to 15
                      color: Colors.white,      // Set the text color to white
                      fontWeight: FontWeight.normal,  // Set the font weight to normal
                      ),
                    ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Back to Main Page'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Games'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
             
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GameFormPage()));

            },
          ),
        ],
      ),
    );
  }
}