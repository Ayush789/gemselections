import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';


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
        backgroundColor: Colors.orange,

      ),
      body: ListView(
        children: <Widget>[
           Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FFresh-water-pearl.jpg?alt=media"),
            ),
          ),
         Text(
            "MOTI | PEARL",
            style: TextStyle(color: Colors.orange, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
         
           Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fpearls.jpeg?alt=media&token=7653f00f-ccca-45a5-ac54-6aea91e61c4e"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[9]),
            ),
             decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20.0,
                  offset: new Offset(5.0, 15.0),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(
              children: <Widget>[
                Text("   Pearl is the most commonly worn gemstone in the world. It is the also widely used gemstone in Astrology. Pearl is the signification of heart man (emotions). By wearing this Gemstone the person gets emotionally stronger. The emotional intelligence of the person improves and leo is able to handle himself and the people he comes in contact with better.\n"),
             
        Text("Pearls are of two types based on origin:"),
        Text("\nFRESH WATER PEARLS", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("\nFresh Water Pearl is extracted from mussel found in fresh water bodies namely takes and rivers.\t"),
        Text("Here they live buried or partially buried in sand and gravel.\t"),
        Text("From these Fresh Water Mussels pearls are extracted. These Pearls are then washed and sorted. Those Pearls that have a uniform shapes and texture are used as ring stones or set in other pieces of Jewellery while the uneven / flamed pearls are used in medicine and cosmetics.\t"),
        Text("At Gem Selections you can find a unique collection of Fresh Water Pearls these range from <b>Rs. 250 per ratti to Rs. 500 per ratti depending on their quality and weight.</b>\t"),
        Text("Each Fresh water pearl comes with a Lab Certificate, Vat paid bill and guarantee of originality from"),
        Text("Khanna Gems (P) Ltd And its promoter Pankaj Khanna.\n\n", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("SOUTH SEA PEARLS\n", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("As the name indicates these Pearls are extracted from Sea water mainly near Japan, Australia, South Korea, Australia and Philippines."),
        Text("These Pearls are available at "),
        Text("Rs. 400/per ratti, Rs. 600/per ratti and Rs. 800/per ratti.\t", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("You can have a look at the collection of South Sea Pearls at Gem Selections and decide what you want as per your requirement and budget.\t"),
        Text("Each South Sea Pearl comes with a Lab Certificate, Vat paid bill and guarantee of originality from "),
        Text("Khanna Gems (P) Ltd And its promoter Pankaj Khanna.\n\n", style: TextStyle(fontWeight: FontWeight.bold),),
         ],
            ),
          ),
         
        ],
      ),
    );
  }
}
