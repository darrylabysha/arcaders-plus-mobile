import 'package:flutter/material.dart';
import 'package:arcaders_plus/widgets/left_drawer.dart';
import 'package:arcaders_plus/widgets/game_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<GameItem> items = [
    GameItem("View Games", Icons.checklist, const Color.fromARGB(255, 47, 93, 130), Colors.white, Colors.white), // Misalnya, warna biru
    GameItem("Add Games", Icons.add_shopping_cart,const Color.fromARGB(57, 0, 187, 255), Colors.black, Colors.black),
    GameItem("Logout", Icons.logout, const Color.fromARGB(255, 244, 79, 54), Colors.white, Colors.white),
  ];

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Arcaders Plus',
            ),
            backgroundColor: const Color.fromARGB(255, 47, 93, 130),
            foregroundColor: Colors.white,
          ),
          drawer: const LeftDrawer(),
          body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Set padding dari halaman
              child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                      'Welcome to Arcaders Plus!', // Text yang menandakan toko
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Grid layout
                  GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((GameItem item) {
                      // Iterasi untuk setiap item
                      return GameCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
      }
}
