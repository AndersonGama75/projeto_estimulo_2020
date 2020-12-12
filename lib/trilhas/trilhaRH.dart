import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhas.dart';
//import 'package:projeto_estimulo_2020/cadastro/cadastro.dart';

class RH extends StatefulWidget {
  
  @override
  _RHState createState() => _RHState();
}

class _RHState extends State<RH> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                      Text(
                        'Módulo:',
                        //textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Gestão\nde RH',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      ]),                      
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                        Container(
                          constraints: BoxConstraints(minWidth: 10, maxWidth: 110),
                          //height: 45,
                            child: Image.asset(
                              'assets/trilha_rh.png'
                            ),
                        ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: LinearPercentIndicator(
                      progressColor: Colors.amber,
                      percent: 0.54,
                      lineHeight: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 115, 0),
                        child: Text(
                          'Progresso desta trilha',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Text('54%'),
                    ],
                  ),
                ],
              ),
            ),
            // ................................................................................................................
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
                                        height: 250,
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
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */
                                                    Text(
                                                      //'Financeiro',
                                                      'Módulo 1',
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              /* Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_financeiro.png',
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        print('Módulo 1 -> Clicado!!!');
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
                                        height: 250,
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
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */
                                                    Text(
                                                      'Módulo 2',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              /* Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_tecnologia.png',
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        print(
                                            'Módulo 2 -> Clicado!!!');
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
                                        height: 250,
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
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */
                                                    Text(
                                                      'Módulo 3',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              /* Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_rh.png',
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        print('Módulo 3 -> Clicado!!!');
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
                                        height: 250,
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
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */
                                                    Text(
                                                      'Módulo 4',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              /* Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_rh.png',
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        print('Módulo 4 -> Clicado!!!');
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
                                        height: 250,
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
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */
                                                    Text(
                                                      'Módulo 5',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              /* Container(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  'assets/img_rh.png',
                                                ),
                                              ), */
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        print('Módulo 5 -> Clicado!!!');
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
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
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
                        padding: EdgeInsets.fromLTRB(0, 10, 70, 10),
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
