import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'First App',
            style: TextStyle(
              color: Colors.amber[300]
            ),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child:  Text(
          'Hello World',
          style: TextStyle(
              color: Colors.amber[300],
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
