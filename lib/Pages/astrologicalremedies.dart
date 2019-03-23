import 'package:flutter/material.dart';
import 'package:gemselections/Pages/imageurl.dart';
import 'package:webview_flutter/webview_flutter.dart';
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
      body: GridView.count(
       crossAxisCount: 2,
        children: <Widget>[
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "1",
            VideoUrl : "tno4pBs5p4M",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "2",
            VideoUrl : "hx6I6jh0ess",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "3",
            VideoUrl : "BkgOKAJIw5M",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "4",
            VideoUrl : "6L7OD0u6T0s",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "5",
            VideoUrl : "J3ow9VBpO_s",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "6",
            VideoUrl : "xgfTETNpLfk",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "7",
            VideoUrl : "6RIWj8tqr2Q",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "8",
            VideoUrl : "",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "9",
            VideoUrl : "92XT5Uhk2-A",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "10",
            VideoUrl : "YkrABS9KCVc",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "11",
            VideoUrl : "dqjWgQpkfrE",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "12",
            VideoUrl : "bbzEEnHJSWs",
          ),
          AstrologicalRemedyTile(
            Imgurl:
                "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Ff8e1b531-bb98-49e1-a98a-4cac3194b41c.jpeg?alt=media",
            EpisodeNo: "13",
            VideoUrl : "f7J8xIY4lMU",
          ),
        ],
      ),
    );
  }
}

class AstrologicalRemedyTile extends StatelessWidget {
  String Imgurl, EpisodeNo, VideoUrl;

  AstrologicalRemedyTile({this.Imgurl, this.EpisodeNo, this.VideoUrl});

  List<String> url = ["tno4pBs5p4M",
                      "hx6I6jh0ess",
                      "BkgOKAJIw5M",
                      "6L7OD0u6T0s",
                      "J3ow9VBpO_s",
                      "xgfTETNpLfk",
                      "6RIWj8tqr2Q",
                      "MWf0T72Ch4c",
                      "92XT5Uhk2-A",
                      "YkrABS9KCVc",
                      "dqjWgQpkfrE",
                      "bbzEEnHJSWs",
                      "f7J8xIY4lMU"
                      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Card(
        elevation: 10.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black,
          ),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                 launchYoutube(VideoUrl);
                  // );
                },
                child: Image.network(Imgurl)
                ),
                Padding(padding: EdgeInsets.only(top:10.0),),
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
