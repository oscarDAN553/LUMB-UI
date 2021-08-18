import 'package:flutter/material.dart';

import 'package:lumb_ui/pages/home_page.dart';
import 'package:lumb_ui/pages/product_page.dart';
import 'package:lumb_ui/theme/app_theme.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home':(_)=> HomePage(),
        'details':(_)=> ProductPage(),
      },
      //home: HomePage()
      //HomePage()

    );
  }
}