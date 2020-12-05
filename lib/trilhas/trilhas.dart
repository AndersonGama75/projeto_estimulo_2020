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
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 420, 0, 1),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.red[100]))),
                        ),
                        Container(
                          // Lista Horizontal - Trilhas
                          margin: EdgeInsets.symmetric(vertical: 130.0),
                          height: 150.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              InkWell(
                                  child: Container(
                                    width: 360.0,
                                    color: Colors.lightBlue[50],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 50, 0, 0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Módulo',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                'Financeiro',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_financeiro.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                              InkWell(
                                  child: Container(
                                    width: 360.0,
                                    color: Colors.lightBlue[50],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 20, 0, 0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Módulo',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                'Tecnologia\n      e\nInovação',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_tecnologia.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                              InkWell(
                                  child: Container(
                                    width: 360.0,
                                    color: Colors.lightBlue[50],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 50, 0, 0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Módulo',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                'Gestão de RH',
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_rh.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                            ],
                          ),
                        ),
                      ],
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
