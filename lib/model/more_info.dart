import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'classes.dart';
import '../colors.dart';

class MoreInfo extends StatelessWidget {

  Nominee nominee;
  MoreInfo(this.nominee);

  @override
  Widget build(BuildContext context) {

    return WebviewScaffold(
      url: 'https://oscar.go.com/nominees/best-picture/black-panther',
      appBar: new AppBar(
        title: Text(this.nominee.name,
        style: TextStyle(color: kOscarBackgroundWhite),),
        textTheme: Theme.of(context).textTheme,
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: false,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Fetching info from oscar.go.com.....'),
        ),
      ),
    );
  }

}

