import 'package:flutter/material.dart';

import 'package:actividad2909/Pages/Home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicación de Pokemon",
      initialRoute: "/",
      routes: {"/": (BuildContext context) => Home(title: "POKEMONES")},
    );
  }
}