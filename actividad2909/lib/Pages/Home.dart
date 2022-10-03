import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:actividad2909/Models/Models_Pokemones.dart';
import 'package:actividad2909/Provider/pokemon_Provider.dart';
import 'package:actividad2909/Widgets/PageView.dart';
import 'package:actividad2909/Widgets/Swiper.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  late Future<List<ModelPokemons>> pokemonsList;

  @override
  void initState() {
    super.initState();

    final InfoProvider = new PokemonProvider();
    pokemonsList = InfoProvider.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<Object>(
          future: pokemonsList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: PageView(
                        controller: PageController(
                          viewportFraction: 0.5,
                        ),
                        children: Widget_PageView(
                            snapshot.data as List<ModelPokemons>),
                      ),
                    ),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                          Widget_Swiper(snapshot.data as List<ModelPokemons>),
                    ),
                  ],
                ),
              );
            } else {
              print(snapshot.error);
              return Center(
                child: const CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

//__________________________________________

