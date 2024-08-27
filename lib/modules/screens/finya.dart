import 'package:flutter/material.dart';

class FinyaWidget extends StatefulWidget {
  @override
  _FinyaWidgetState createState() => _FinyaWidgetState();
}

class _FinyaWidgetState extends State<FinyaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: Uri.dataFromString(
          '''
          <!DOCTYPE html>
          <html lang="en">
          <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>WebView Example</title>
          </head>
          <body>
            <script id="__CONTEXT_BUBBLE__" src="https://portal.usecontext.io/portal/portal.js" data-theme="light" data-type="attribute"></script>
          </body>
          </html>
          ''',
          mimeType: 'text/html',
        ).toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}