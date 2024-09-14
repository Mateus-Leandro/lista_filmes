import 'dart:async';

import 'package:lista_filmes/data/models/movie.dart';
import 'package:lista_filmes/data/movie_api.dart';
import 'package:lista_filmes/service_locator.dart';

class MovieListController {
  final api = getIt<MovieApi>();

  final _streamController = StreamController<List<Movie>>();
  Stream<List<Movie>> get stream => _streamController.stream;

  void init() {
    getMovies();
  }

  void getMovies() async {
    var response = await api.getMovies();
    _streamController.sink.add(response);
  }
}
