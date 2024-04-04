import 'package:flutter/material.dart';
import 'package:movies_app_2/Types/movie_type.dart';

class MoviePayment extends StatefulWidget {
  final List<Movie> movies;

  const MoviePayment({Key? key, required this.movies}) : super(key: key);

  @override
  State<MoviePayment> createState() => _MoviePaymentState();
}

class _MoviePaymentState extends State<MoviePayment> {
  Map<Movie, int> selectedMovies = {};
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    calculateTotalPrice();

    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Payment'),
      ),
      body: ListView.builder(
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          final movie = widget.movies[index];
          return ListTile(
            leading: Image.network(
              'https://image.tmdb.org/t/p/w500${movie.posterPath}',
              width: 50,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title),
            subtitle: Text('\$20'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (selectedMovies.containsKey(movie) &&
                          selectedMovies[movie]! > 0) {
                        selectedMovies[movie] = selectedMovies[movie]! - 1;
                      }
                    });
                  },
                ),
                Text(selectedMovies.containsKey(movie)
                    ? selectedMovies[movie]!.toString()
                    : '0'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      selectedMovies[movie] = (selectedMovies[movie] ?? 0) + 1;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Price: \$${totalPrice.toString()}'),
                ElevatedButton(
                  onPressed: () {
                    // Add confirmation logic here
                    print('Confirm Payment');
                  },
                  child: Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void calculateTotalPrice() {
    totalPrice = 0;
    selectedMovies.forEach((movie, quantity) {
      totalPrice += quantity * 20; // Assuming each movie costs $20
    });
  }
}
