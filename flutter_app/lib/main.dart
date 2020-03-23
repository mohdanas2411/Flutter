import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First App',
          style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.amberAccent[700],
        centerTitle:true,
      ),
      body :Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
           Expanded(
             flex: 2,
             child: Container(
                child: Image.asset('asset/'+'$i'+".jpg"),
                padding: EdgeInsets.all(20.0),
              ),
           ),
            SizedBox(height: 20.0,),
            Expanded(
              flex: 1,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   RaisedButton(
                    onPressed: (){
                    setState((){
                      if(i>1)
                        i-=1;
                      else
                        i=3;
                      });
                    },

                    color: Colors.amberAccent[700],
                    child: Text('previous'),
                  ),
                  SizedBox(width: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      setState((){
                        if(i<3)
                          i+=1;
                        else
                          i=1;
                      });
                    },
                    color: Colors.amberAccent[700],
                    child: Text('Next'),
                    ),
                  ],
                ),
            ),
            ],
        ),
      ),

    );
  }
}

