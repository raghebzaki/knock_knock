import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPayment extends StatefulWidget {
  final String url;
  const WebViewPayment({
    super.key, required this.url,
  });

  @override
  State<WebViewPayment> createState() => _WebViewPaymentState();
}

class _WebViewPaymentState extends State<WebViewPayment> {
  WebViewController controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: controller..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
            },

            onPageStarted: (String url) {},
            onPageFinished: (String url) async {
              controller.addJavaScriptChannel(
                  "messageHandler",
                  onMessageReceived: (JavaScriptMessage message) {
                    if (kDebugMode) {
                      print(message.message);
                    }
                    var jsonData = jsonDecode(message.message);
                    if(jsonData['status'] == 1){
                      print("ok");
                    }else if(jsonData['status'] == 0){
                      print("false");
                      // Your code
                    }
                  });
            },

            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith(widget.url)) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.url)),
    );
  }
}
