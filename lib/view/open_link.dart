import 'package:all_in_one_app/provider/all_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Open extends StatefulWidget {
  const Open({Key? key}) : super(key: key);

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> {
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<All>(context, listen: false);
    providerT = Provider.of<All>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("${providerT!.alllogo[index].uri}")),
          onLoadError: (controller, url, code, message) {
          },
          onLoadStop: (controller, url) {
          },
          onLoadStart: (controller, url) {
          },
          onProgressChanged: (controller, progress) {
          },
        ),
      ),
    );
  }
}
