import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'a141476b1338ea5c7ec9b6ab6a812869';

  Future<ItemModel> fetchMovieList() async {
    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
