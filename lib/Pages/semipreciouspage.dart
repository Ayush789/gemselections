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
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAmethist.jpg?alt=media"),
            Text("Amythsy (Katela)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 2:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAquamarine.jpg?alt=media"),
            Text("Aquamarine (Beruj)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 3:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Onyx-Cabochun.jpg?alt=media"),
            Text("Black Onyx (Cabochon)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 4:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Onyx-cut.jpg?alt=media"),
            Text("Black Onyx (Cut)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 5:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Rainbow.jpg?alt=media"),
            Text("Black Rainbow"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 6:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Star.jpg?alt=media"),
            Text("Black Star"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 7:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlue-Topaz.jpg?alt=media"),
            Text("Blue Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 8:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAquamarine.jpg?alt=media"),
            Text("Beruj"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 9:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGolden-Topaz.jpg?alt=media"),
            Text("Citrine | Sunhela | Golden Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 10:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMoon-Stone.jpg?alt=media"),
            Text("Chandramani | Moonstone"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 11:
        return Column(
          children: <Widget>[
            Text("Dhunela | Smoky Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 12:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTurquoise.jpg?alt=media"),
            Text("Feroja | Turquoise"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 13:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGarnet.jpg?alt=media"),
            Text("Garnet | Tamara"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 14:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGolden-Topaz.jpg?alt=media"),
            Text("Golden Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 15:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Amethys.jpg?alt=media"),
            Text("Green Amethyst"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 16:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Flourite.jpg?alt=media"),
            Text("Green Fluorite"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );
      case 17:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FGreen-Garnet.jpg?alt=media"),
            Text("Green Garnet | Vasonite"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 18:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FOnyx.jpg?alt=media"),
            Text("Green Onyx"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 19:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTurmuline.jpg?alt=media"),
            Text("Green Tourmaline"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 20:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FI-Olite.jpg?alt=media"),
            Text("Iolite (Kakaneeli)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 21:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FJade.jpg?alt=media"),
            Text("Jade"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 22:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FAmethist.jpg?alt=media"),
            Text("Amethyst (Katela): Jamunia"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 23:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FI-Olite.jpg?alt=media"),
            Text("Iolite (Kakaneeli)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 24:
        return Column(
          children: <Widget>[
            Text("Kyanite"),
            Text("Body"),
          ],
        );

      case 25:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlack-Rainbow.jpg?alt=media"),
            Text("Labradorite"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 26:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLepis-Lazuli.jpg?alt=media"),
            Text("Lajwrat | Lapiz Lazuli | Lapiz Lazuli"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 27:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLepis-Lazuli.jpg?alt=media"),
            Text("Lajwrat | Lapiz Lazuli | Lapiz Lazuli"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 28:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FLemon-Topaz.jpg?alt=media"),
            Text("Lemon Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 29:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMalachite.jpg?alt=media"),
            Text("Malachite"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 30:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMoon-Stone.jpg?alt=media"),
            Text("Chandramani | Moonstone"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 31:
        return Column(
          children: <Widget>[
            Row(
              children:[
              Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fwhiteopal.img.jpg?alt=media"),
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FOpal.jpg?alt=media"),
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FBlackfireopal.img.jpg?alt=media"),
              
              ],
            ),
            Text("Opal"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 32:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FOnyx.jpg?alt=media"),
            Text("Onyx"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 33:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPeriodot.jpg?alt=media"),
            Text("Peridot"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 34:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FPink-Tourmaline.jpg?alt=media"),
            Text("Pink Tourmaline"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 35:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Onyx-Cabochun.jpg?alt=media"),
            Text("Red Onyx (Cabochon)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 36:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRed-Onyx-cut.jpg?alt=media"),
            Text("Red Onyx(Cut)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 37:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Frhodolite-garnet.jpg?alt=media"),
            Text("Rhodolite Garnet(Cut)"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 38:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FRose-Quartz.jpg?alt=media"),
            Text("Rose Quartz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 39:
        return Column(
          children: <Widget>[
            Text("Dhunela | Smoky Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 40:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FStar-Ruby.jpg?alt=media"),
            Text("Star Ruby"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      

      case 42:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FMarium-gemstone.jpg?alt=media"),
            Text("Sang-e-Maryam"),
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
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTiger's-Eye-Stone.jpg?alt=media"),
            Text("Tiger's Eye"),
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
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Coral.jpg?alt=media"),
            Text("White Coral"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 49:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Quartz-gemstone.jpg?alt=media"),
            Text("White Quartz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 50:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-Rainbow.jpg?alt=media"),
            Text("White Rainbow"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 51:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FWhite-topaz.jpg?alt=media"),
            Text("White Topaz"),
            Image.network(imgurl),
            Text("Body"),
          ],
        );

      case 52:
        return Column(
          children: <Widget>[
            Image.network("https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FZircon.jpg?alt=media"),
            Text("Zircon"),
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
