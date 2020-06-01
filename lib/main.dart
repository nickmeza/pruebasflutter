import 'package:flutter/material.dart';
import 'package:pruebas/src/pages/alert_page.dart';
import 'package:pruebas/src/pages/avatar_page.dart';
import 'package:pruebas/src/pages/card_page.dart';
import 'package:pruebas/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes para ejemplo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      //definiendo rutas
      routes: <String, WidgetBuilder>{
        'home':( BuildContext contex )=> HomePage(),
        'avatar':( BuildContext contex )=> AvatarPage(),
        'alert':( BuildContext contex )=> AlertPage(),
        'card':( BuildContext contex )=> CardPage(),
      },
      /* crear nuevas rutas
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CardPage());
      },*/
    );
  }
}