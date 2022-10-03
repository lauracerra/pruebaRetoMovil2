import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:actividad2909/Models/Models_Pokemones.dart';

class PokemonProvider {
   Future<List<ModelPokemons>> getPokemons() async {
    final resp = await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon"));

    if (resp.statusCode == 200) {
      String body = utf8.decode(resp.bodyBytes);
      final jsonData = jsonDecode(body);

      //Guardar los enlaces de cada pokemon (INTENTAR HACERLO LLAMANDO EL NOMBRE "URL" DEL DICCIONARIO)
      final pokemons = new Pokemones();
      for (var item in jsonData["results"]) {
        final linkPokemon = item['url'];
        final pokemon = await http.get(Uri.parse(linkPokemon));
        String bodyPokemon = utf8.decode(pokemon.bodyBytes);
        final jsonPokemon = jsonDecode(bodyPokemon);

        pokemons.get_info(jsonPokemon);
      }
      return (pokemons.Pokemones_List);
    } else {
      throw Exception("Ocurrió algo ${resp.statusCode}");
    }
  }

}
  

