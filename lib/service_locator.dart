import 'package:get_it/get_it.dart';
import 'package:lista_filmes/data/movie_api.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerLazySingleton<MovieApi>(() => MovieApi());
}
