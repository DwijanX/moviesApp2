import 'package:flutter/material.dart';
import 'package:movies_app_2/Types/movie_type.dart';

class SimpleMovieWidget extends StatelessWidget {
  final List<Movie> items;
  final Function(Movie) onTap;

  SimpleMovieWidget({required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items
          .map((item) => ListTile(
                leading: Image.network(
                  'https://image.tmdb.org/t/p/w500${item.posterPath}',
                  width: 25,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(item.title),
                subtitle: Text("Price: 20"),
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
