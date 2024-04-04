import 'package:flutter/material.dart';
import 'package:movies_app_2/HomeBloc/movie_page.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Successful',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the home page
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeBloc()));
              },
              child: Text('Volver a inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
