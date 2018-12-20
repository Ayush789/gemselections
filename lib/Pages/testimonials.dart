import 'package:flutter/material.dart';
import 'package:gemselections/Pages/mainscaffold.dart';
import 'package:url_launcher/url_launcher.dart';

class TestimonialsPage extends StatefulWidget {
  @override
  _TestimonialsPageState createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  _launchurl(String url) async {
    print("Launching2");
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Cannot launch $url");
    }
  }

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
                "Video",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {
                        _launchurl('vnd.youtube:bG7cCXqcJag');
                      },
                      child: Container(
                        child: Image.network(videolist[index]),
                      ),
                    );
                  },
                  itemCount: videolist.length,
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
                "Letters",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Image.network(letterlist[index]),
                      ),
                    );
                  },
                  itemCount: letterlist.length,
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
                "Comments",
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FlatButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Image.network(commentlist[index]),
                      ),
                    );
                  },
                  itemCount: commentlist.length,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

List<String> videolist = [
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
  'https://i.ytimg.com/vi/P3ljdRM06YM/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDw_ue9pm_2Ec3P-iDJMwPxySQrOQ',
];
List<String> letterlist = [
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png',
  'https://cdn-images.zety.com/templates/zety/valera-32-classic-silver-dark-1957.png'
];
List<String> commentlist = [
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png',
  'https://checkoway.net/assets/posts/tweet-images/tweet.png'
];
