import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  final title_appbar;

  WebViewContainer(this.url, this.title_appbar);

  @override
  createState() => _WebViewContainerState(this.url, this.title_appbar);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _title_appbar;
  final _key = UniqueKey();
  bool isLoading = true;

  _WebViewContainerState(this._url, this._title_appbar);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title_appbar),
      ),
      body: Stack(
        children: [
          WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              }),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                )
              : Stack(),
        ],
      ),
    );
  }
}
