import 'package:flutter/material.dart';
import 'package:arcaders_plus/screens/gamelist_form.dart';

class GameItem {
  final String name;
  final IconData icon;
  final Color color;
  final Color textColor; 
  final Color iconColor;

  GameItem(this.name, this.icon, this.color, this.textColor, this.iconColor);
}

class GameCard extends StatelessWidget {
  final GameItem item;

  const GameCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(20.0), // Set the border radius as needed
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You have pressed the ${item.name} button!")));
          if (item.name == "Add Games") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GameFormPage()));
          }
            
        },
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item.icon,
                    color: item.iconColor,
                    size: 30.0,
                  ),
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: item.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}
