import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:gemselections/Pages/mainscaffold.dart';

class AstrologicalRemediesPage extends StatefulWidget {
  @override
  _AstrologicalRemediesPageState createState() =>
      _AstrologicalRemediesPageState();
}

class _AstrologicalRemediesPageState extends State<AstrologicalRemediesPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: ListView(
        children: <Widget>[
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "1",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "2",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "3",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "4",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "5",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "6",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "7",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "8",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "9",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "10",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "11",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "12",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "13",
          ),
        ],
      ),
    );
  }
}

class AstrologicalRemedyTile extends StatelessWidget {
  String Imgurl, EpisodeNo;

  AstrologicalRemedyTile({this.Imgurl, this.EpisodeNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black,
          ),
          child: Column(
            children: <Widget>[
              Image.network(Imgurl),
              Text(
                "Episode $EpisodeNo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
