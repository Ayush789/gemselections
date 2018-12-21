import 'package:flutter/material.dart';

class MotiPage extends StatefulWidget {
  @override
  _MotiPageState createState() => _MotiPageState();
}

class _MotiPageState extends State<MotiPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pearl"),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FFresh-water-pearl.jpg?alt=media"),
          Text(
            "MOTI|PEARL",
            style: TextStyle(color: Colors.purple, fontSize: 20.0),
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media"),
          Text("Pearl is the most commonly worn gemstone in the world. It is the also widely used gemstone in Astrology. Pearl is the signification of heart man (emotions). By wearing this Gemstone the person gets emotionally stronger. The emotional intelligence of the person improves and leo is able to handle himself and the people he comes in contact with better.
        \n\n
        Pearls are of two types based on origin:
        \n\n <b><u>FRESH WATER PEARLS</u></b>
        \n\t
        Fresh Water Pearl is extracted from mussel found in fresh water bodies namely takes and rivers.
\n\t
Here they live buried or partially buried in sand and gravel.
\n\t
From these Fresh Water Mussels pearls are extracted. These Pearls are then washed and sorted. Those Pearls that have a uniform shapes and texture are used as ring stones or set in other pieces of Jewellery while the uneven / flamed pearls are used in medicine and cosmetics.
\n\t
At Gem Selections you can find a unique collection of Fresh Water Pearls these range from <b>Rs. 250 per ratti to Rs. 500 per ratti depending on their quality and weight.</b>
\n\t
Each Fresh water pearl comes with a Lab Certificate, Vat paid bill and guarantee of originality from <b>Khanna Gems (P) Ltd And its promoter Pankaj Khanna.</b>
    \n\n
        <b><u>SOUTH SEA PEARLS</u></b>
        \n\tAs the name indicates these Pearls are extracted from Sea water mainly near Japan, Australia, South Korea, Australia and Philippines.
\n\t
These Pearls are available at <b>Rs. 400/per ratti, Rs. 600/per ratti and Rs. 800/per ratti.</b>
\n\t
You can have a look at the collection of South Sea Pearls at Gem Selections and decide what you want as per your requirement and budget.
\n\t
Each South Sea Pearl comes with a Lab Certificate, Vat paid bill and guarantee of originality from <b>Khanna Gems (P) Ltd And its promoter Pankaj Khanna.</b>"),
        ],
      ),
    );
  }
}
