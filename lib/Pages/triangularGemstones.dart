import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

List<TriangularGem> gemstones = [
  TriangularGem(
    Title: "Golden Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Golden-Topaz.jpg?alt=media",
    DialogText: "Ideally suited for people born in Zodiac signs ruled by Jupiter i.e., Sagittarius and Pisces, the Golden Topaz is also recommended as a lucky gem of Scorpio and Aries. Benefits: An effective gem, which almost acts as a mental tonic, the Golden Topaz confers dignity and nobility of character. One gets innovative ideas by wearing this gem, and learns to control anger and also turning one\'s energies positively. Who should wear it? Ideally suited for people born in Zodiac signs ruled by Jupiter i.e., Sagittarius and Pisces, the Golden Topaz is also recommended as a lucky gem of Scorpio and Aries. ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Lemon Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Lemon-Topaz.jpg?alt=media",
    DialogText: "Triangular Lemon Topaz are known to have special powers of healing and energising us. Gems of this shape when worn as pendants have more than normal effect and they do not loose there power when they are worn for long periods. There aura instead of weakning gets stronger and stronger. Wear these to get special benefits in your life. They come with Govt. Certificate and quality which comes with our 24 years of experience.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Green Amethyst",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Amethyst.jpg?alt=media",
    DialogText: "Violet-purple in colour, Amethyst is one gemstone with an excellent lustre and transparency. Found in a number of cuts like oval, drop mixed cuts, step cuts, the distribution of colour in striking patches, and bands is characteristic. In case of Amethyst, when you see it with a lens, you will see inclusions and a series of discontinuous wavy parallel lines. Benefits: It is traditionally considered, a great help, in getting rid of intoxication. It is even said that if you drink wine in a cup made of Amethyst, it will loose its intoxicating effect. This stone is believed to heal females suffering from gynecological problems. Also widely used by people involved in occult sciences, as it is said to have impart strong spiritual powers. Who should wear it? The Greeks believed that use of this gem gave un-ending love and affection. Amethyst is a birthstone of people born in February but others may also wear it. This gem is useful in controlling one\'s tendency of getting distracted, switching so often from one activity to the other. Since it brings about financial stability, it is of great help to those who find it difficult to manage their financial affairs.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Rose Quartz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-rose-quartz.jpg?alt=media",
    DialogText: "Triangular Rose quartz is one of the most desirable varieties of quartz. The pink to rose red color is completely unique, unlike any other pink mineral species. The color is caused by iron and titanium impurities. Rose quartz is used as an ornamental stone and as a gemstone. Rose quartz is found in Madagascar, India, Germany and several localities in the USA. Much rose quartz was extracted from a famous site near Custer, South Dakota, but now, most of the worlds supply of good carvable rose quartz comes from Brazil. Brazil is also the only source of true well formed crystals of rose quartz. If rutile needles are present in the rose quartz then a star effect or asterism is sometimes seen. The star is best seen when light is viewed through the rose quartz. Pink quartz (rose quartz) allows you to be in touch with your basic self. It will allow you to get to know your true self and to love that true self in all its beauty. It can also allow you to communicate internally with your spirit guides, which means you may or may not be aware of them but they are teaching you all the same. Rose Quartz is a good stone for someone who has trouble loving themselves or accepting love from another because they do not believe that they are worthy of being loved. Opens Heart Chakra Rose quartz is the most powerful for dealing with affairs of the heart. It opens up the heart for both giving and receiving love. It soothes negative influences. This stone is good for dealing with issues on an emotional level. A stone from the heart and for the heart. It helps one to be able to love themselves. A good stone for dealing with a \"broken heart.\" The rose quartz is also good for helping one to release childhood traumas, neglect, lack of love, self-esteem. The best stone for opening the 4th chakra.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Green Fluorite",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-green-fluorite.jpg?alt=media",
    DialogText: "Green Florite is a very beautiful Gemstone. Green in colour it is an excellent substitute of Emerald and a Gem Stone of planet Mercury and Ganesha. It is said to bring wealth and serinity. It calms the nervous system, reduces the anxiety and improves the communicaation skills of the wearer. Green Florite can improve the confidence level of the person also.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Smokey Topaz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Smoky-Topaz.jpg?alt=media",
    DialogText: "A brilliant Gem of smoky colour used extensively to ward off evil spirits, Smoky Topaz is especially useful for people facing unfulfilled love. Besides giving one success in love, it is said to protect the wearer from depressions and sleeplessness. Benefits: It has great spiritual, medicinal and super natural power that holds the faith of many and is of immense use to people interested in occult. Also useful in healing eye infections, eye sores, stomach ailments, stomach ulcers, throat infections, giddiness and blood poisoning. Who should wear it? This is a highly recommended colour for research scholars and those who want to acquire a flair for creativity.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "Green Onyx",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-Green-Onyx.jpg?alt=media",
    DialogText: "Hard, tough and durable, Onyx is ideal for carving and engraving or fashioning into beads, spheres and bowls, making paper weights, pen holders, book ends and boxes. Used in inexpensive jewellery Onyx is also used for stone inlay work. With its consecutive layers of different colours, it makes excellent material for cameos and some variegated pieces are used for the carving of multi-coloured figurines. Benefits: Used instead of Emerald, Onyx gives good comprehension power and the power to deeply analyse a situation before reacting to it. Mostly used by astrologers to give better business acumen and management skills. Who should wear it? People interested in politics should use it. It restores confidence in life and love. And though it comes in different shades like red, blue, green, yellow, black and white, but astrologically the best suited for wearing, as a ring stone is green onyx.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
  TriangularGem(
    Title: "White Quartz",
    ImageUrl:
        "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FTriangular-White-Quartz.jpg?alt=media",
    DialogText: "White Quartz is a plain white stone, which lacks a bit in luster but makes up for it in its extreme clarity; it also gives out a unique shine. Benefits: It has a cooling and soothing effect on one who\'s both looking on and wearing it. If worn in such a way that it touches the skin then it cools down the person and gives him inner peace. s Who should wear it? This gem has the highest occult power and is used extensively by Sadhus and other people who want to get special heavenly powers. It is useful in combating stress-related problems if worn in 50 ct. plus sizes.\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
    WeightText: "Quality : Premium\n\n Weight : 11.25 Ratti Rs. 2100.00\nWeight : 21.00 Ratti Rs. 4200.00 ",
  ),
];

class TriangularGemstonesPage extends StatefulWidget {
  @override
  _TriangularGemstonesPageState createState() =>
      _TriangularGemstonesPageState();
}

class _TriangularGemstonesPageState extends State<TriangularGemstonesPage> {
  String full =
          "Triangular Gemstones are known to have special powers of healing and energising us. Gems of this shape when worn as pendants have more than normal effect and they do not loose there power when they are worn for long periods. There aura instead of weakning gets stronger and stronger. Wear these to get special benefits in your life. They come with Govt. Certificate and quality which comes with our 24 years of experience",
      half =
          "Triangular Gemstones are known to have special powers of healing and energising us. Gems of this shape when worn as pendants have more ...";
  bool iffull = false;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Triangular Gemstones",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  iffull = !iffull;
                });
              },
              child: Column(
                children: <Widget>[
                  Text(
                    (iffull) ? full : half,
                    style: TextStyle(color: Colors.blue[900], fontSize: 15.0),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Container()),
                      Text(
                        (iffull) ? "Show less" : "Show more",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We deal in following triangular gems:",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: TriangularButtonsToRows(gemstones, context),
          )
        ],
      ),
    );
  }
}

class TriangularGem extends StatelessWidget {
  String Title, ImageUrl, DialogText,WeightText;

  TriangularGem({
    this.DialogText,
    this.Title,
    this.ImageUrl,
    this.WeightText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: 170.0,
        height: 180.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Title,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            FlatButton(
              child:
              //  Image.network(
              //   ImageUrl,
              //   width: 150.0,
              // ),
              Container(
                width: 150.0,
                child: CachedNetworkImage(
                    imageUrl: ImageUrl,
                    placeholder: (context, url) =>Align(alignment: Alignment.center,child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>Icon(Icons.error),
                  ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content:ListView(children:<Widget>[ Text(DialogText) , Text(WeightText,style:TextStyle(fontWeight:FontWeight.bold,))]),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> TriangularButtonsToRows(
    List<TriangularGem> gembuttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  int numPerRow = (width / 150.0).floor();
  int numTotal = gembuttons.length;
  print(width);
  print(numPerRow);
  print((numTotal / numPerRow).ceil());
  List<Widget> colList = [];
  List<TriangularGem> curList = [];
  for (int i = 0; i < (numTotal / numPerRow).ceil(); i++) {
    curList = [];
    for (int j = 0; j < numPerRow; j++) {
      if (i * numPerRow + j < numTotal) {
        curList.add(gembuttons[i * numPerRow + j]);
      }
    }
    colList.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: curList,
      ),
    );
  }
  return colList;
}
