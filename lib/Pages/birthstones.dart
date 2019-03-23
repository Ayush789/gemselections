import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class BirthStonesPage extends StatefulWidget {
  @override
  _BirthStonesPageState createState() => _BirthStonesPageState();
}

class _BirthStonesPageState extends State<BirthStonesPage> {
  int v1 = 0;

  void showContent(int x) {
    String Main = "", Substitue = "";
    switch (x) {
      case 1:
        Main = "Coral Stone(Moonga)";
        Substitue = " Red Onyx";
        break;
      case 2:
        Main = "White Sapphire(Safed Pukhraj)\nDiamond(Heera)";
        Substitue = " White Quartz \nZircon \n Aquamarine";
        break;
      case 3:
        Main = "Emerald(Panna Stone)";
        Substitue =
            " Peridot \n Green Amethyst \n Green Fluorite \n Green Garnet \n Green Tourmaline \n Green Onyx";
        break;
      case 4:
        Main = "Pearl(Moti)";
        Substitue = " Moonstone";
        break;
      case 5:
        Main = "Ruby(Manik)";
        Substitue = " Garnet \n Pink Tourmaline \n Rose Quartz \n Star Ruby";
        break;
      case 6:
        Main = "Emerald(Panna Stone)";
        Substitue =
            " Peridot \n Green Amethyst \n Green Fluorite \n Green Garnet \n Green Tourmaline \n Green Onyx";
        break;
      case 7:
        Main = "White Sapphire(Safed Pukhraj)\nDiamond(Heera)";
        Substitue = " White Quartz \nZircon \n Aquamarine";
        break;
      case 8:
        Main = "Coral Stone(Moonga)";
        Substitue = " Red Onyx";
        break;
      case 9:
        Main = "Yellow Sapphire(Pukhraj)";
        Substitue = " Golden Topaz";
        break;
      case 10:
        Main = "Blue Sapphire(Neelam)";
        Substitue =
            " I-olite \n BlackStar \n Blue Topaz \n Smoky Topaz \n Turquoise";
        break;
      case 11:
        Main = "Blue Sapphire(Neelam)";
        Substitue =
            " I-olite \n BlackStar \n Blue Topaz \n Smoky Topaz \n Turquoise";
        break;
      case 12:
        Main = "Yellow Sapphire(Pukhraj)";
        Substitue = "Golden Topaz";
        break;
      default:
        return;
    }

    if (Main != "") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Main BirthStone:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(Main),
                  Text("\n"),
                  Text(
                    "Substitute BirthStone:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(Substitue),
                ],
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                " To find more about the gems mentioned here,please refer to semi-precious gems section in app.",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "\nCheck your birthstone:\n",
              style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                ),
                
                items: [
                  DropdownMenuItem<int>(
                    value: 0,
                    child: Text("--None--"),
                  ),
                  DropdownMenuItem<int>(
                    value: 1,
                    child: Text("Aries"),
                  ),
                  DropdownMenuItem<int>(
                    value: 2,
                    child: Text("Taurus"),
                  ),
                  DropdownMenuItem<int>(
                    value: 3,
                    child: Text("Genimi"),
                  ),
                  DropdownMenuItem<int>(
                    value: 4,
                    child: Text("Cancer"),
                  ),
                  DropdownMenuItem<int>(
                    value: 5,
                    child: Text("Leo"),
                  ),
                  DropdownMenuItem<int>(
                    value: 6,
                    child: Text("Virgo"),
                  ),
                  DropdownMenuItem<int>(
                    value: 7,
                    child: Text("Libra"),
                  ),
                  DropdownMenuItem<int>(
                    value: 8,
                    child: Text("Scorpio"),
                  ),
                  DropdownMenuItem<int>(
                    value: 9,
                    child: Text("Saggitarius"),
                  ),
                  DropdownMenuItem<int>(
                    value: 10,
                    child: Text("Capricon"),
                  ),
                  DropdownMenuItem<int>(
                    value: 11,
                    child: Text("Aquaris"),
                  ),
                  DropdownMenuItem<int>(
                    value: 12,
                    child: Text("Pisces"),
                  ),
                ],
                onChanged: (int x) {
                  print(v1);
                  setState(() {
                  v1 = x;
                  });
                  print(v1);
                  showContent(x);
                },
                value: v1,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0),),
            Text(
                "Buying Birthstones is a not a very easy task for a layman as the Quality and Originality of Birthstones is something which is difficult to assess for any person who is not a trained Gemologist.\n\nNow let us try to understand these two points in detail:\n\nThe quality of Gemstones implies the three things:\n\n "),
            Text(
              " 1.Colour:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
                " The colour of a Birthstone is the most important factor. More eye pleasing and vibrant the colour of a Gemstone more is its price and simultaneously more is its effect.\n\n"),
            Text(
              " 2.Clarity:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
                " The transparency is a very important factor that differentiates between a Stone and a Birthstone. To be effective a Birthstone has to be transparent so that it absorbs the cosmic rays in full strength and transfers it in the body of the wearer. More transparent the Birthstone better is its effect.\n\n"),
            Text(
              " 3.Luster: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
                "Shine and a feeling as if a coloured light is emitting out of a Gemstone is a sign of Quality a Value for a Birthstone. You can feel this Green Light coming out of Emerald (Panna Stone), Red or Pinkish light emitting out of Ruby(Manik Stone), Blue light coming out of Blue Sapphire(Neelam Stone), Yellow light coming out of a Yellow Sapphire(Pukhraj Stone).\n\nOriginality of Birthstone is even more important because if the Birthstone is not original then all other factors are of nil value.\n\nTo determine weather a Birthstone is original is not possible for a lay man so the only solution available is to buy from  Gem Selections, Janakpuri, New Delhi where you will get a Certificate of Originality from the Gemological Laboratory of Indian Gemological Institute, under the Ministry of Commerce, Govt. of India."),
          ],
        ),
      ),
    );
  }
}
