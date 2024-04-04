import 'package:flutter/material.dart';
import 'package:movies_app_2/Types/movie_type.dart';

class MovieListWidget extends StatelessWidget {
  final List<Movie> items;
  final Function(Movie) onTap;

  MovieListWidget({required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items
          .map((item) => ListTile(
                leading: Image.network(
                  'https://image.tmdb.org/t/p/w500${item.posterPath}',
                  width: 50,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                title: Text(item.title),
                subtitle: Text(item.overview),
                onTap: () {
                  // Handle item tap here
                  print('Tapped on ${item.title}');
                  onTap(item);
                },
              ))
          .toList(),
    );
  }
}
