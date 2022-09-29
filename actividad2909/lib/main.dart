import 'package:flutter/material.dart';

void main() => runApp(MyApp());
  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POKEMONES',
      home: Scaffold(
        body: PageView(
          children: <Widget>[
          
            Pagina(Colors.red),
            Pagina(Colors.blue),
            Pagina(Colors.green),

          ],
         )
      ),
    );
  }

  
}

class Pagina extends StatelessWidget{
  final Color color;
  const Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,
    );
  }

}