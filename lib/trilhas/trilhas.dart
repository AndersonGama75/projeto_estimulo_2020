import 'package:flutter/material.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhaFinanceiro.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhaTecnologia.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhaRH.dart';
import 'package:projeto_estimulo_2020/menu/menu.dart';

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
              //color: Colors.yellow,
              padding: EdgeInsets.fromLTRB(20, 55, 20, 0),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: [
                      Text(
                        'Trilhas de Capacitação\nGeral',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\nConclua todas as trilhas para ter a chance de\nreceber seu empréstimo',
                        //textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
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
                          //color: Colors.amber,
                          // Lista Horizontal - Trilhas
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 410.0,
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: <Widget>[
                                    InkWell(
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          color: Colors.lightBlue[50],
                                        ),
                                        child: Container(
                                          width: 360.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                            color: Colors.lightBlue[50],
                                          ),
                                          //color: Colors.lightBlue[50],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 50, 0, 0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      'Financeiro',
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_financeiro.png',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Financeiro()
                                          ),
                                        );
                                        print('Financeiro -> Clicado!!!');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: <Widget>[
                                    InkWell(
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          color: Colors.lightBlue[50],
                                        ),
                                        child: Container(
                                          width: 360.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                            color: Colors.lightBlue[50],
                                          ),
                                          //color: Colors.lightBlue[50],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 30, 0, 0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      'Tecnologia\ne Inovação',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_tecnologia.png',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Tecnologia(),
                                            ),
                                          );
                                        print('Tecnologia e Inovação -> Clicado!!!');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: <Widget>[
                                    InkWell(
                                      child: Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          color: Colors.lightBlue[50],
                                        ),
                                        child: Container(
                                          width: 360.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                            color: Colors.lightBlue[50],
                                          ),
                                          //color: Colors.lightBlue[50],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    70, 50, 0, 0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      'RH',
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_rh.png',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                        MaterialPageRoute(
                                          builder: (context) => RH(),
                                        ),
                                        );
                                        print('RH -> Clicado!!!');
                                      },
                                    ),
                                  ],
                                ),
                              ),
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
                          /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            )); */
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

/* class TelaTrilhas extends StatefulWidget {
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
              //color: Colors.yellow,
              padding: EdgeInsets.fromLTRB(20, 55, 20, 0),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: [
                      Text(
                        'Trilhas de Capacitação\nGeral',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\nConclua todas as trilhas para ter a chance de\nreceber seu empréstimo',
                        //textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
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
                                                'Módulo:',
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
                                                'Módulo:',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Text(
                                                'Tecnologia\ne\nInovação',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 30,
                                                ),
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
                                                'Módulo:',
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
} */
