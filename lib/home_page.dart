import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.indigo,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 350,
                  child: Image.asset('assets/image/rain.png')),
                Text(
                  'Weather',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  'ForeCasts',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(221, 177, 48, 1),
                  ),
                ),
                SizedBox(
                  width: 204,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(221, 177, 48, 1)),
                    child: Text('Get Start'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
