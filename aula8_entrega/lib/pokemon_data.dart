import 'package:dio/dio.dart';

class PokemonData{
  String name = 'None';
  String spriteUrl = '';
  String types = '';
  int id = 0;

  PokemonData(String pokemonName){
    name = pokemonName;
  }

  fetchData() async{
    Dio dio = Dio();
    String url = "https://pokeapi.co/api/v2/pokemon/$name";
    Response r = await dio.get(url);
    id = r.data['order'];
    spriteUrl = r.data['sprites']['front_default'];
    types = r.data['types'][0]['type']['name'];
    if (r.data['types'].length == 2) types += ', ${r.data['types'][1]['type']['name']}';
  }
}