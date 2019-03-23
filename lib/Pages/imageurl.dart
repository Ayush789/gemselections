import 'package:url_launcher/url_launcher.dart';

String imgurl =
    "https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/AppData%2Fnatural-pukhraj-stone-certified.jpg?alt=media";

String placeholder = "assets/gemstones/gemstonesbanner.png";
// String placeholder = "assets/placeholder.png";

  List<String> semi_pre_video_pics = ['https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fsemi_pre%2Famethyst.jpeg?alt=media&token=9e35c833-91eb-4ed8-8a51-0e2ffe73175f',
                                      'https://firebasestorage.googleapis.com/v0/b/gemselections-add52.appspot.com/o/YoutubeImages%2Fsemi_pre%2Faquamarine.jpeg?alt=media&token=02cc0c33-681d-4f6c-905f-175cd1ae5c65',
                                      ''];

  List<String> semi_pre_video_link = ['NkrqeqeUGdM'
                                      'UPWJJumif4w',
                                      ];

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

String mobile_app_video    = "ztD0h3PTkQc";
String victorian_jewellery = "3ipwkl_tGzI";
String gemStuddedJewellery = "1k7gaSAvbiU";
String diamondJewellery    = "okVOrm2cM6s";

List<String> jewel_victorian            = List<String>.generate(136, (i)=>"VJ 9346${(i+1).toString().padLeft(3,'0')}");
List<String> diamond_Studded            = List<String>.generate(14 , (i)=> "DSAG 474589${(i+1).toString().padLeft(2,'0')}");
List<String> diamond_sets               = List<String>.generate(81 , (i)=> "DJS 71290${(i+1).toString().padLeft(2,'0')}");
List<String> diamond_rings              = List<String>.generate(96 , (i)=> "DR 2140${(i+1).toString().padLeft(2,'0')}");
List<String> diamond_nose_pins          = List<String>.generate(22 , (i)=> "DNS 8710${(i+1).toString().padLeft(2,'0')}");
List<String> jewel_gemStudded_sets      = List<String>.generate(54 , (i)=> "GSJS 16490${(i+1).toString().padLeft(2,'0')}");
List<String> jewel_gemStudded_bracelets = List<String>.generate(37 , (i)=> "GSB 49830${(i+1).toString().padLeft(2,'0')}");

var jewel_gemStudded_rings     = ['GSE 5982103',
                                  'GSE 5983001',
                                  'GSE 5983002',
                                  'GSE 5983003',
                                  'GSE 5983003',
                                  ];

var jewel_gemStudded_tops      = ['GSE 5982103',
                                  'GSE 5982103',
                                  'GSE 5982103',
                                  'GSE 5982103',
                                  ];

var jewel_gemStudded_pendants  = ['GSP3192002',
                                  'GSP3192003',
                                  'GSP3192004',
                                  'GSP3192005',
                                  ];


var diamond_pendants           = ['DP 3981001',
                                  'DP 3981002',
                                  'DP 3981003',
                                  'DP 3981004'
                                  ];

var diamond_tops               = ['DJT 5310001',
                                  'DJT 5310002',
                                  'DJT 5310003',
                                  'DJT 5310004'
                                  ];

var diamond_bracelets          = ['DP 3981001',
                                  'DP 3981002',
                                  'DP 3981003',
                                  'DP 3981004'
                                  ];

var diamond_studs              = ['DSS 1009001',
                                  'DSS 1009002',
                                  'DSS 1009003',
                                  'DSS 1009004'];

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
    await launch(url, forceSafariVC: true, forceWebView: true, );
  } else {
    throw 'Could not launch $url';
  }
}
