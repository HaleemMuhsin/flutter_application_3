import 'package:flutter/material.dart';
import 'package:flutter_application_3/custom_bottom_nav_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  late WebViewController
      _controller; // Add this line to track the webview controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl:
              'https://billboardsjcetapp.netlify.app', // Replace with your website URL
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
      ),
    );
  }
}
