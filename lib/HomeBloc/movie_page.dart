import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:movies_app_2/HomeBloc/movie_cubit.dart';
import 'package:movies_app_2/HomeBloc/movie_state.dart';
import 'package:movies_app_2/Types/movie_type.dart';
import 'package:movies_app_2/Widgets/list_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        bottomSheet: selectedMovies.isNotEmpty
            ? Container(
                height: 200,
                child: MovieListWidget(
                  items: selectedMovies,
                  onTap: (movie) {
                    setState(() {
                      selectedMovies.remove(movie);
                    });
                  },
                ),
              )
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
                      selectedMovies.add(movie);
                    });
                  });
            } else {
              return SizedBox();
            }
          },
        ));
  }
}
