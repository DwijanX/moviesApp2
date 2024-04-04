import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:movies_app_2/HomeBloc/movie_state.dart';
import 'package:movies_app_2/Types/movie_type.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieLoading()) {
    fetchMovies();
  }
  Dio dio = Dio();
  fetchMovies() async {
    final response = await dio.get(
        'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=fa3e844ce31744388e07fa47c7c5d8c3');

    try {
      ResponseMovie data = welcomeFromJson(response.toString());
      emit(MovieNew(data: [data]));
    } catch (e) {
      print(e);
    }
  }

  void addData(String welcomeJson) {
    try {
      ResponseMovie data = welcomeFromJson(welcomeJson);

      emit(MovieNew(data: [data]));
    } catch (e) {
      print(e);
    }
  }
}
