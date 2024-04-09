import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:movies_app_2/HomeBloc/movie_cubit.dart';
import 'package:movies_app_2/HomeBloc/movie_state.dart';
import 'package:movies_app_2/PayPage/paying_Page.dart';
import 'package:movies_app_2/Types/movie_type.dart';
import 'package:movies_app_2/Widgets/list_widget.dart';
import 'package:sentry/sentry.dart';
import 'package:movies_app_2/Widgets/simple_list_widget.dart';

class HomeBloc extends StatefulWidget {
  const HomeBloc({super.key});

  @override
  State<HomeBloc> createState() => _HomeBlocState();
}

class _HomeBlocState extends State<HomeBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => MovieCubit(), child: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  List<Movie> selectedMovies = [];
  final dio = Dio();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Future<void> test() async {
    try {
      //throw Exception("Exception Throwed manually");
    } catch (exception, stackTrace) {
      print("test");
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    test();
    return Scaffold(
        key: _scaffoldKey,
        bottomSheet: selectedMovies.isNotEmpty
            ? Container(
                height: 300,
                child: Column(children: [
                  Container(
                    height: 200,
                    child: SimpleMovieWidget(
                      items: selectedMovies,
                      onDelete: (Movie movie) {
                        setState(() {
                          selectedMovies.remove(movie);
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MoviePayment(movies: selectedMovies)));
                      },
                      child: Text("pagar"))
                ]))
            : null,
        appBar: AppBar(
          title: Text('Movie Page'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        body: BlocBuilder<MovieCubit, MovieState>(
          builder: (context, state) {
            if (state is MovieLoading) {
              return Text("Loading.......");
            } else if (state is MovieNew) {
              return MovieListWidget(
                items: state.data.results,
                onTap: (Movie movie) {
                  setState(() {
                    if (selectedMovies.contains(movie)) {
                      selectedMovies.remove(movie);
                    } else {
                      selectedMovies.add(movie);
                    }
                  });
                },
              );
            } else {
              return SizedBox();
            }
          },
        ));
  }
}
