import 'package:flutter/material.dart';
import 'package:movies_app_2/Types/movie_type.dart';

class SimpleMovieWidget extends StatelessWidget {
  final List<Movie> items;
  final Function(Movie) onDelete;

  SimpleMovieWidget({required this.items, required this.onDelete});

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
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    onDelete(item);
                  },
                ),
              ))
          .toList(),
    );
  }
}
