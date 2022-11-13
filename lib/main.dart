import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(themeMode: ThemeMode.dark,
      initialRoute: HomePage.RouteName,
      routes:{
        HomePage.RouteName:(context)=>HomePage()} ,
debugShowCheckedModeBanner: false,


    );
  }
}


