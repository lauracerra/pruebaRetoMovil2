import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:card_swiper/card_swiper.dart';

// import 'package:flutter_swiper_demo/Constants/Constants.dart';
// import 'package:flutter_swiper_demo/modal/image_model.dart';
// import 'package:flutter_swiper_demo/themes/device_size.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'POKEMONES';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                child: PageView(
                  controller: PageController(
                    viewportFraction: 0.5,
                  ),
                  children: <Widget>[
                    Pagina(Colors.blue),
                    Pagina(Colors.red),
                    Pagina(Colors.green),
                    Pagina(Colors.blue),
                    Pagina(Colors.red),
                    Pagina(Colors.green),
                    Pagina(Colors.blue),
                    Pagina(Colors.red),
                    Pagina(Colors.green),
                    Pagina(Colors.blue),
                    Pagina(Colors.red),
                    Pagina(Colors.green),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 250.0,
                child: Swiper(
                  viewportFraction: 0.8,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 3,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pagina extends StatelessWidget {
  final Color color;
  const Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(30)),
    );
  }
}


