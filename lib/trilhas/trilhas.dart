import 'package:flutter/material.dart';

class TelaTrilhas extends StatefulWidget {
  @override
  _TelaTrilhasState createState() => _TelaTrilhasState();
}

class _TelaTrilhasState extends State<TelaTrilhas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 55, 20, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Trilhas de Capacitação Geral',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    '    Conclua todas as trilhas para ter a chance de \n                    receber seu empréstimo',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 68, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFF0083D9),
                        Color(0xFFAFE1FF),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    border: Border.all(
                        width: 1, color: Colors.blue, style: BorderStyle.solid),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[600],
                        blurRadius: 8.0,
                        offset: Offset(1, 1.5),
                      ),
                    ]),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 420, 0, 1),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.red[100]))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Wrap(
          children: <Widget>[
            BottomAppBar(
              child: Container(
                height: 62,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/home.png',
                              scale: 1.3,
                            ),
                            Text('Home'),
                          ],
                        ),
                      )
                    ]),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        topLeft: Radius.circular(0)),
                    border: Border.all(
                        width: 1,
                        color: Colors.blue,
                        style: BorderStyle.solid)),
              ),
            ),
          ],
        ));
  }
}
