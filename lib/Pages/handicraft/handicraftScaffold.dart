import 'package:flutter/material.dart';
import 'package:gemselections/Pages/handicraft/goldplatedpots.dart';

class HandicraftScaffold extends StatefulWidget {
  Widget body;

  HandicraftScaffold({
    @required this.body,
  });

  @override
  _HandicraftScaffoldState createState() => _HandicraftScaffoldState();
}

class _HandicraftScaffoldState extends State<HandicraftScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Handicraft"),
      ),
      body: widget.body,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Gold Plated Pots"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Gold Painted Marbel Clocks"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Gold Painted Platedand Tiles"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Handicraft Gifts"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Other Spiritual Items"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Spiritual Gifts"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Black Stone"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Soap Stone"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Spiritual Table Top"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoldPlatedPotsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}








