import 'package:movies_app_2/Types/movie_type.dart';

class MovieState {
  MovieState();

  get data => null;
}

class MovieLoading extends MovieState {
  MovieLoading();
}

class MovieNew extends MovieState {
  List<ResponseMovie> data;
  MovieNew({required this.data});
  @override
  List<Object> get props => [data];
}
