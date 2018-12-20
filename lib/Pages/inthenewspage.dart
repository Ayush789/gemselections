import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class InTheNewsPage extends StatefulWidget {
  @override
  _InTheNewsPageState createState() => _InTheNewsPageState();
}
 
class _InTheNewsPageState extends State<InTheNewsPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "TV Show",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        child: Image.network(tvlogolist[index]),
                      ),
                    );
                  },
                  itemCount: tvlogolist.length,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Articles",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        child: Image.network(newspaperlogolist[index]),
                      ),
                    );
                  },
                  itemCount: newspaperlogolist.length,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Print Media",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 120.0,
                        width: 100.0,
                        child: Image.network(printmedialogolist[index]),
                      ),
                    );
                  },
                  itemCount: printmedialogolist.length,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

List<String> tvlogolist = [
  'https://vignette.wikia.nocookie.net/logopedia/images/7/75/ABP_News_logo_2012.jpg',
  'https://vignette.wikia.nocookie.net/logopedia/images/7/75/ABP_News_logo_2012.jpg',
  'https://vignette.wikia.nocookie.net/logopedia/images/7/75/ABP_News_logo_2012.jpg',
  'https://vignette.wikia.nocookie.net/logopedia/images/7/75/ABP_News_logo_2012.jpg',
  'https://vignette.wikia.nocookie.net/logopedia/images/7/75/ABP_News_logo_2012.jpg'
];

List<String> newspaperlogolist = [
  'https://www.hindustantimes.com/images/app-images/ht/logo-big-cm.png',
  'https://www.hindustantimes.com/images/app-images/ht/logo-big-cm.png',
  'https://www.hindustantimes.com/images/app-images/ht/logo-big-cm.png',
  'https://www.hindustantimes.com/images/app-images/ht/logo-big-cm.png',
  'https://www.hindustantimes.com/images/app-images/ht/logo-big-cm.png',
];

List<String> printmedialogolist = [
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
  'https://spiderimg.amarujala.com/assets/images/2018/09/03/750x506/amarujala_1535918602.jpeg',
];
