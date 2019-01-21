import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
// import 'package:url_launcher/url_launcher.dart';

class ManikPage extends StatefulWidget {
  @override
  _ManikPageState createState() => _ManikPageState();
}

class _ManikPageState extends State<ManikPage> {
  int v1;
  var _controller = ScrollController();

  void showPrice1(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [
        41000,
        92250,
        133250,
        174250,
        215250,
        256250,
        297250,
        338250,
        379250,
        420250,
        461250
      ],
      2: [
        11000,
        24750,
        35750,
        46750,
        57750,
        68750,
        79750,
        90750,
        101750,
        112750,
        123750
      ],
      3: [
        6100,
        13725,
        19825,
        25925,
        32025,
        38125,
        44225,
        50325,
        56425,
        62525,
        68625
      ],
      4: [
        4100,
        9225,
        13325,
        17425,
        21525,
        25625,
        29725,
        33825,
        37925,
        42025,
        46125
      ],
      5: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
      6: [525, 1181, 1706, 2231, 2756, 3281, 3806, 4331, 4856, 5381, 5906]
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NON HEATED MANIK STONE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Weight : INR"),
                  Text("Rs ${values[v1][0]} per Ratti"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  void showPrice2(int v1, BuildContext context) {
    Map<int, List<int>> values = {
      1: [
        3100,
        6975,
        10075,
        13175,
        16275,
        19375,
        22475,
        25575,
        28675,
        31775,
        34875
      ],
      2: [
        2100,
        4725,
        6825,
        8925,
        11025,
        13125,
        15225,
        17325,
        19425,
        21525,
        23625
      ],
      3: [1100, 2475, 3575, 4675, 5775, 6875, 7975, 9075, 10175, 11275, 12375],
    };

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              // height: 100.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "HEATED MANIK STONE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Weight : INR"),
                  Text("Rs ${values[v1][0]} per Ratti"),
                  Text(""),
                  Text("2.25 ratti Rs ${values[v1][1]}/-"),
                  Text("3.25 ratti Rs ${values[v1][2]}/-"),
                  Text("4.25 ratti Rs ${values[v1][3]}/-"),
                  Text("5.25 ratti Rs ${values[v1][4]}/-"),
                  Text("6.25 ratti Rs ${values[v1][5]}/-"),
                  Text("7.25 ratti Rs ${values[v1][6]}/-"),
                  Text("8.25 ratti Rs ${values[v1][7]}/-"),
                  Text("9.25 ratti Rs ${values[v1][8]}/-"),
                  Text("10.25 ratti Rs ${values[v1][9]}/-"),
                  Text("11.25 ratti Rs ${values[v1][10]}/-"),
                ],
              ),
            ),
          );
        });
  }

  Widget bottomData(int x) {
    if (x == 1) {
      return Column(
        children: <Widget>[
          Text(
              "At Gem Selections we have a range of Manik i.e., Manik from Rs. 525/- Rt to Rs. 31000/- Rt."),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Text(
            "Ruby",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              " At Gem Selections we have a range of Ruby i.e., Manikya from Rs. 525/ Rt to Rs. 41000/ Rt."),
          Text(
              "\nYou can have a look at these collections and decide what you want as per your requirement and budget."),
          Text(
              "\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna."),
          Text(
            "\nHealing power of Ruby",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "\nThe Red cosmic rays of the Ruby are connected with Sun which in Astrology represents the Soul. It also has the ruler ship over the Bone System on which the power of the body rests. The Red Cosmic Rays of Ruby affects the concentration of the mind and thus makes the mind goal oriented making it more prone to success. People who lack concentration or have lesser understanding benefit a lot from Ruby if they have the right type of Aura.\n\nAyurved, the ancient Indian scripture dealing with medicine, tells about a number of uses of Ruby Ash (Manik bhasma). It is said to prolong life and control the three vital elements Vays (air), Pitta (fire and Kapha (water). A number of diseases like Tuberculosis, Pains, Boils, Ulcers, Eye Troubles, Constipation, Effects of Poisons can be cured by it. The burning sensation in the stomach and the limbs can also be cured by it.\n\nHeart diseases, mental problems, problems of the bones, headaches, loss of glow in skin, loss of appetite and indigestion can also be cured by the Red Cosmic Rays of the Ruby.\n\nThe basic chakra or the mooldhara chakra contains a lot of Red energy in all living beings especially humans. The quantity of red colour determines the energy level of the person. If the basic chakra is depleted of the red energy due to any reason then the person has number of problems – like weakness, lack of heat in the body, circulation of blood is disturbed, the healing of injuries take a longer time to get alright and the body is unable to fight the attacks from bacteria and the person gets sick again and again.\n\nAll the major chakras, when seen Clairevoyantly, have some red colour in them. Thus, the wearing of Ruby which transfers a lot of red cosmic energy into our system helps strengthening all the major chakras of the body.Where bones are brittle or fractures are not healing this can be an effective remedy.\n\nAstrological Relevance of the Ruby Gemstone Ruby Gemstone is the Gem of Star Sun and is used to empower it. It is has some general benefits which include"),
          Text(
              "\n  1. It improves the real power of concentration. Better concentration of mind leads to all round achievements in personal and professional life."),
          Text(
              "\n  2. It improves the natural process of RBC building and helps in fighting anemia and other blood related deseases. It gives a glow on skin and face."),
          Text(
              "\n  3. It is the karka of Skeleton System and thus helps strengthening the Bones, Joints and the ligaments."),
          Text(
              "\n  4. It is the Gem of Sun, the most powerful body in our solar system, thus it helps achieve power, fame, glory and status."),
          Text(
              "\n  5. It gives emotional strength to the person to withstand deceit. It helps in strengthening the person\'s Bhagya i.e., Fate in people born with Leo i.e., Shimha Lagna, Aries i.e., Mesh Lagna, and Sagittarius i.e., Dhanu Lagna. It is also strongly recommended for people born in Libra i.e., Tula Lagna as the Sun God is the lord of the eleventh house - the house of all round gains. Let us understand the Effect of Ruby Gemstone on various Nakshatras:\n\n\n\t  1. Ashwani: Gives brighteyes and sparkle.\n\t  2. Bharni: Inproves initiative\n\t  3. Kritika: Sharp features\n\t  4. Rohini: Happy domestic life.\n\t  5. Mraga: Diginity\n\t  6. Ardra: Wealthy\n\t  7. Punarvasu: Magnetic personality\n\t  8. Pushya: Honorable and upright.\n\t  9. Ashlesha: Wise and beautiful.\n\t  10. Magha: Fearless\n\t  11. Purva: Straightforward and successful\n\t  12. Uttara: Money and Love\n\t  13. Hasta: Earns respect and wealth.\n\t  14. Chitra: Gets unearned income.\n\t  15. Swati: Success in business.\n\t  16. Vishaka: Kind and loveable\n\t  17. Anuradha: Good talker. Passionate but passive nature.\n\t  18. Jestha: Deep thinking and professional success.\n\t  19. Mula: Healthy and strong\n\t  20. Purvashada: Wealth and pleasures\n\t  21. Uttarashada: Expert in conversations.\n\t  22. Shravan: Kind hearted and modest.\n\t  23. Dhanishta: Great satisfaction\n\t  24. Shatataraka: Careful and wise.\n\t  25. Purvabhadrapada: Mystic and Occult powers\n\t  26. Uttarabhadrapada: Money and fixed deposits.\n\t  27. Revati: Great savings in money.\n\nOn this earth the most important is Sun, when it rises the day is created and when it goes down there is night. Its heat and light makes life on earth possible. it is the source of all energy and power. Sun and Ruby Gemstone are most important."),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          )
        ],
      );
    }
    if (x == 2) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2FIndian-Ruby.jpg?alt=media"),
          Text(
            "INDIAN RUBY",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "\nAt Gem Selections we have a range of Indian Ruby i.e., Manikya from Rs. 525/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget. \n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is the gem of Sun , it improves the concentration of mind and gives lusture to the skin . This gem gives all round success in life and is the karka for leadership. This improves the leadership qualities and puts the person in forefront . It gives intellectual capabilities and improves one’s writing and speaking powers."),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          )
        ],
      );
    }
    if (x == 3) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fafrican-ruby.jpg?alt=media"),
          Text(
              "At Gem Selections we have a range of African Ruby i.e., Manikya from Rs. 525/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget. \n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is the gem of Sun , it improves the concentration of mind and gives lusture to the skin . This gem gives all round success in life and is the karka for leadership. This improves the leadership qualities and puts the person in forefront . It gives intellectual capabilities and improves one’s writing and speaking powers."),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          )
        ],
      );
    }
    if (x == 4) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnew-burma-ruby.jpg?alt=media"),
          Text(
            "NEW BURMESE RUBY",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "\nAt Gem Selections we have a range of new burmese Ruby i.e., Manikya from Rs. 525/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget. \n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is the gem of Sun , it improves the concentration of mind and gives lusture to the skin . This gem gives all round success in life and is the karka for leadership. This improves the leadership qualities and puts the person in forefront . It gives intellectual capabilities and improves one’s writing and speaking powers."),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          )
        ],
      );
    }
    if (x == 5) {
      return Column(
        children: <Widget>[
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fold-burma-ruby.jpg?alt=media"),
          Text(
            "OLD BURMESE RUBY",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "\nAt Gem Selections we have a range of old burmese Ruby i.e., Manikya from Rs. 525/ Rt to Rs. 31000/ Rt.\n\nYou can have a look at these collections and decide what you want as per your requirement and budget. \n\nWhat ever you buy comes with a Lab Certificate, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj Khanna.\n\nThis is the gem of Sun , it improves the concentration of mind and gives lusture to the skin . This gem gives all round success in life and is the karka for leadership. This improves the leadership qualities and puts the person in forefront . It gives intellectual capabilities and improves one’s writing and speaking powers.\n\n")
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manik  "),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        controller: _controller,
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.all(30.0),
            child: FadeInImage(
              placeholder: AssetImage(placeholder),
              image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fabout-ruby-gemstone.jpg?alt=media"),
            ),
          ),
          Text(
            "MANIK STONE|RUBY",
            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              child: FadeInImage(
                placeholder: AssetImage(placeholder),
                image: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fmanik_stone.jpeg?alt=media&token=569b26d3-c1bd-43db-95e2-44a5e95f5bb3"),
              ),
              onTap: () => LaunchYoutube(precious_you_link[3]),
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
            padding: EdgeInsets.only(top: 20.0),
            margin: EdgeInsets.symmetric(horizontal: 7.0),
            child: Text(
              "Types of Rubies",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.redAccent),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Card(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text("  Select One"),
                items: [
                  DropdownMenuItem<int>(
                    child: Text("ABOUT RUBY | MANIK"),
                    value: 1,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("INDIAN RUBY | MANIK"),
                    value: 2,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("AFRICAN RUBY"),
                    value: 3,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("NEW BURMA RUBY"),
                    value: 4,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("OLD BURMA RUBY"),
                    value: 5,
                  ),
                  DropdownMenuItem<int>(
                    child: Text("RUBY IDENTIFICATION"),
                    value: 6,
                  ),
                ],
                onChanged: (int x) {
                  setState(() {
                    if (x == 6) {
                      launchRubyIdent();
                    }

                    v1 = x;
                  });
                  Future.delayed(const Duration(milliseconds: 100), () {
                    setState(() {
                      _controller.animateTo(
                          _controller.position.extentInside,
                          curve: Curves.easeInOut,
                          duration: Duration(seconds: 2));
                    });
                  });
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Text(
            "  Select Qulaity to know price",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
          ),
          Builder(
            builder: (context) => Card(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(" NON-HEATED MANIK"),
                      items: [
                        DropdownMenuItem<int>(
                          child: Text("A Quality"),
                          value: 1,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("B Quality"),
                          value: 2,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("C Quality"),
                          value: 3,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("D Quality"),
                          value: 4,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("E Quality"),
                          value: 5,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("F Quality"),
                          value: 6,
                        ),
                      ],
                      onChanged: (int x) {
                        showPrice1(x, context);
                      },
                    ),
                  ),
                ),
          ),
          Builder(
            builder: (context) => Card(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text("  HEATED MANIK"),
                      items: [
                        DropdownMenuItem<int>(
                          child: Text("A Quality"),
                          value: 1,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("B Quality"),
                          value: 2,
                        ),
                        DropdownMenuItem<int>(
                          child: Text("C Quality"),
                          value: 3,
                        ),
                      ],
                      onChanged: (int x) {
                        showPrice2(x, context);
                      },
                    ),
                  ),
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: bottomData(v1)),
        ],
      ),
    );
  }
}
