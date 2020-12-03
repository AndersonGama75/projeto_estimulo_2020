import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhas.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Boa \nTarde !',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                      Row(children: <Widget>[
                        Text(
                          'Eduardo Felipe',
                          maxLines: 2,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: Text(
                            'EF',
                            style: TextStyle(fontSize: 22),
                          ),
                          radius: 30,
                        ),
                      ]),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 5),
                    child: LinearPercentIndicator(
                      progressColor: Colors.amber,
                      percent: 0.5,
                      lineHeight: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 115, 0),
                        child: Text(
                          'Progresso das minhas trilhas',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Text('50%'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Home',
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey[300],
                        width: 2,
                        height: 40,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaTrilhas()),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/trilhas.png',
                              scale: 1.3,
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text('Trilhas')
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey[300],
                        width: 2,
                        height: 40,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/livro.png',
                              scale: 1.3,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text('Mentoria')
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
