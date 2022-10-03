import 'dart:convert';

class Pokemones {
  List<ModelPokemons> Pokemones_List = [];

  Pokemones();

  get_info(Map<String, dynamic> jsonPokemon) {
    if (jsonPokemon == null) return {};

    final pokemon = ModelPokemons.fromJsonMap(jsonPokemon);
    Pokemones_List.add(pokemon);
  }
}

class ModelPokemons {
  late String name;
  late String imageUrl;

  ModelPokemons(this.name, this.imageUrl);

  ModelPokemons.fromJsonMap(Map<String, dynamic> json) {
    name = json["name"];
    imageUrl = json["sprites"]['other']['official-artwork']['front_default'];
  }
}

