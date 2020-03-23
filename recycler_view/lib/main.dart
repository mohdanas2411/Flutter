import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyCard.dart';

void main() => runApp(MaterialApp(
  home: Recycler(),
));
class Recycler extends StatefulWidget {
  @override
  _RecyclerState createState() => _RecyclerState();
}

class _RecyclerState extends State<Recycler> {
  List <MyCard> card = [
    MyCard(name:'Anas',pass:'anas123'),
    MyCard(name:'Anas',pass:'anas123'),
    MyCard(name:'Anas',pass:'anas123'),
    MyCard(name:'Anas',pass:'anas123'),
    MyCard(name:'Anas',pass:'anas123'),
    MyCard(name:'Anas',pass:'anas123'),


  ];

  Widget MyRecycler(card){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0,4.0,15.0,4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Name : ${card.name}',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'Password : ${card.pass}',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
            'Recycler View',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 20.0
            ),
        ),
      ),
      body: Column(
        children: card.map((card) => MyRecycler(card)).toList(),
      ),
    );
  }
}
