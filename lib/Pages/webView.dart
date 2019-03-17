import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';

class WebViewGem extends StatelessWidget {

  String url;

  WebViewGem({this.url});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text("GemSelection"),backgroundColor: Colors.blue[900],),
      url: url,
    );
  }
}