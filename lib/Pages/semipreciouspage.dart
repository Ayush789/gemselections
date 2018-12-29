import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class SemiPreciousGemstonesPage extends StatefulWidget {
  @override
  _SemiPreciousGemstonesPageState createState() =>
      _SemiPreciousGemstonesPageState();
}

class _SemiPreciousGemstonesPageState extends State<SemiPreciousGemstonesPage> {
  int v1 = 1;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Text("We have"),
          Text("Selet a Gemstone"),
          DropdownButtonFormField(
            items: [
              DropdownMenuItem<int>(
                child: Text("Amethyst(Katela)"),
                value: 1,
              ),
              DropdownMenuItem<int>(
                child: Text("Aquamarine(Beruj)"),
                value: 2,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Onyx(Cabocho)"),
                value: 3,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Onyx(Cut)"),
                value: 4,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Rainbow"),
                value: 5,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Star"),
                value: 6,
              ),
              DropdownMenuItem<int>(
                child: Text("Black Topaz"),
                value: 7,
              ),
              DropdownMenuItem<int>(
                child: Text("Beruj"),
                value: 8,
              ),
              DropdownMenuItem<int>(
                child: Text("Citrine"),
                value: 9,
              ),
              DropdownMenuItem<int>(
                child: Text("Chandramani"),
                value: 10,
              ),
              DropdownMenuItem<int>(
                child: Text("Dhunela"),
                value: 11,
              ),
              DropdownMenuItem<int>(
                child: Text("Feroja"),
                value: 12,
              ),
              DropdownMenuItem<int>(
                child: Text("Garnet(Tamara)"),
                value: 13,
              ),
              DropdownMenuItem<int>(
                child: Text("Golden Topaz"),
                value: 14,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Amethyst"),
                value: 15,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Fluorite"),
                value: 16,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Garnet(Vasonite)"),
                value: 17,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Onyx"),
                value: 18,
              ),
              DropdownMenuItem<int>(
                child: Text("Green Tourmaline"),
                value: 19,
              ),
              DropdownMenuItem<int>(
                child: Text("Iolite(Kaka Neeli)"),
                value: 20,
              ),
              DropdownMenuItem<int>(
                child: Text("Jade"),
                value: 21,
              ),
              DropdownMenuItem<int>(
                child: Text("Kateala"),
                value: 22,
              ),
              DropdownMenuItem<int>(
                child: Text("Kakaneeli"),
                value: 23,
              ),
              DropdownMenuItem<int>(
                child: Text("Kyanite"),
                value: 24,
              ),
              DropdownMenuItem<int>(
                child: Text("Labrolite"),
                value: 25,
              ),
              DropdownMenuItem<int>(
                child: Text("Lajwrat"),
                value: 26,
              ),
              DropdownMenuItem<int>(
                child: Text("Lapis Lazuli"),
                value: 27,
              ),
              DropdownMenuItem<int>(
                child: Text("Lemon Topaz"),
                value: 28,
              ),
              DropdownMenuItem<int>(
                child: Text("Malachite"),
                value: 29,
              ),
              DropdownMenuItem<int>(
                child: Text("MoonStone(Chandramani)"),
                value: 30,
              ),
              DropdownMenuItem<int>(
                child: Text("Opal"),
                value: 31,
              ),
              DropdownMenuItem<int>(
                child: Text("Onyx"),
                value: 32,
              ),
              DropdownMenuItem<int>(
                child: Text("Peridot"),
                value: 33,
              ),
              DropdownMenuItem<int>(
                child: Text("Pink Tourmaline"),
                value: 34,
              ),
              DropdownMenuItem<int>(
                child: Text("Red Onyx(Cabochon)"),
                value: 35,
              ),
              DropdownMenuItem<int>(
                child: Text("Red Onyx(Cut)"),
                value: 36,
              ),
              DropdownMenuItem<int>(
                child: Text("Rhodolite Garnet(Cut)"),
                value: 37,
              ),
              DropdownMenuItem<int>(
                child: Text("Rose Quartz"),
                value: 38,
              ),
              DropdownMenuItem<int>(
                child: Text("Smoky Topaz(Dhunela)"),
                value: 39,
              ),
              DropdownMenuItem<int>(
                child: Text("Star Ruby"),
                value: 40,
              ),
              DropdownMenuItem<int>(
                child: Text("Sunehala"),
                value: 41,
              ),
              DropdownMenuItem<int>(
                child: Text("Sang-e-Maryam"),
                value: 42,
              ),
              DropdownMenuItem<int>(
                child: Text("Surya Kant Mani"),
                value: 43,
              ),
              DropdownMenuItem<int>(
                child: Text("Tamara"),
                value: 44,
              ),
              DropdownMenuItem<int>(
                child: Text("Tiger's Eye"),
                value: 45,
              ),
              DropdownMenuItem<int>(
                child: Text("Turquoise(Feroza)"),
                value: 46,
              ),
              DropdownMenuItem<int>(
                child: Text("Vasonite"),
                value: 47,
              ),
              DropdownMenuItem<int>(
                child: Text("White Coral"),
                value: 48,
              ),
              DropdownMenuItem<int>(
                child: Text("White Quartz"),
                value: 49,
              ),
              DropdownMenuItem<int>(
                child: Text("White Rainbow"),
                value: 50,
              ),
              DropdownMenuItem<int>(
                child: Text("White Topaz"),
                value: 51,
              ),
              DropdownMenuItem<int>(
                child: Text("Zircon"),
                value: 52,
              ),
            ],
            onChanged: (x) {
              setState(() {
                v1 = x;
              });
            },
            value: v1,
          ),
          showbottom(v1),
        ],
      ),
    );
  }

  Widget showbottom(int x) {
    switch (x) {
      case 1:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Amythsy (Kerela)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 2:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Aquamarine (Beruj)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 3:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 4:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 5:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 6:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 7:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 8:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 9:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 10:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 11:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 12:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 13:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 14:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 15:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 16:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );
      case 17:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 18:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 19:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 20:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 21:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 22:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 23:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 24:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 25:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 26:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 27:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 28:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 29:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 30:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 31:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 32:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 33:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 34:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 35:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 36:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 37:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 38:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 39:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 40:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 41:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 42:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 43:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 44:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 45:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 46:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 47:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 48:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 49:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 50:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 51:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 52:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 53:
        return Column(
          children: <Widget>[
            Image.network(imgurl),
            Text("Name"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      default:
        return Container();
    }

    return Container();
  }
}
