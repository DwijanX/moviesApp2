import 'package:movies_app_2/Types/movie_type.dart';

class MovieState {
  MovieState();

  get data => null;
}

class MovieLoading extends MovieState {
  MovieLoading();
}

class HomeNew extends MovieState {
  List<ResponseMovie> data;
  HomeNew({required this.data});
  @override
  List<Object> get props => [data];
}
