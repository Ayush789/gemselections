import 'package:url_launcher/url_launcher.dart';

String imgurl =
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media";

String placeholder = "assets/gemstones/gemstonesbanner.png";
// String placeholder = "assets/placeholder.png";

List<String> precious_you_link = [
  'GT6d2ShkyQ4',
  'KC4t6RbeB9Y',
  'qOPYGLh4OkM',
  '9y4KM5FflE8',
  '9gKJXyLSBp4',
  '-DQ9dWIpyNI',
  'sgnb-nr1UHQ',
  'CeDODoOMGCU',
  'Ow_C4Kp2VpE',
  '5lbgEk97vbM',
  'IE2taW6_Xi4',
  'TCWMjYKcvpY',
  '7LHUls5FNdk',
  'GVOcqJeG5iM'
];

String mobile_app_video = "ztD0h3PTkQc";

void LaunchYoutube(String id) async {
  if (await canLaunch("vnd.youtube://" + id)) {
    await launch("vnd.youtube://" + id);
  } else {
    print("Cannot launch " + id);
  }
}

void launchYoutube(String id) async {
  if (await canLaunch("vnd.youtube://" + id)) {
    await launch("vnd.youtube://" + id);
  } else {
    print("Cannot launch " + id);
  }
}

void launchRubyIdent() async {
  const url = 'https://www.gemselections.in/ruby-identification.htm';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
