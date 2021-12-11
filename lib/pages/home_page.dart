import 'package:flutter/material.dart';
import 'package:lumb_ui/widgets/widgets.dart';

//import 'package:lumb_ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          leading:Icon(Icons.smart_screen_outlined),
          title: Text('Buenas Tardes'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.eco_outlined),
            ],  
        ),
         
         body: GridViewHome()

        );
  }
}