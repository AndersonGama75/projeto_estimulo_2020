import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projeto_estimulo_2020/trilhas/trilhas.dart';
//import 'package:projeto_estimulo_2020/cadastro/cadastro.dart';

class Menu extends StatefulWidget {
  const Menu({Key key, this.nomeUsuario}) : super(key: key);

  @override
  _MenuState createState() => _MenuState(this.nomeUsuario);
  final String nomeUsuario;
}

class _MenuState extends State<Menu> {

  final String nomeUsuario;

  _MenuState(this.nomeUsuario);

  //ArgumentosDaRota importNome;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Boa\nTarde!',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                        Container(
                          constraints: BoxConstraints(minWidth: 10, maxWidth: 110),
                          height: 45,
                            child: Text(
                              '$nomeUsuario',
                              textAlign: TextAlign.right,
                              //maxLines: 2,
                              style: TextStyle(fontSize: 18),
                            ),
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
                                    Stack(children: [
                                      Container(
                                        //color: Colors.green,
                                        height: 250,
                                        child: Container(
                                          width: 360.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                            color: Colors.lightBlue[50],
                                          ),
                                          //color: Colors.lightBlue[50],
                                          child: Row(
                                            /* mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 50, 0, 0),
                                                child: Column(
                                                  children: [
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
                                            ], */
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(left: 20, top: 15),
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  'assets/novidades.png'
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(left: 10, top: 15),
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Novidades",
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w300,
                                                    //backgroundColor: Colors.yellow,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        margin: EdgeInsets.only(top: 50),
                                        height: 190,
                                        //color: Colors.yellow,
                                        child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        /* Container(
                          padding: EdgeInsets.fromLTRB(0, 420, 0, 1),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.red[100]))),
                        ), */
                        Container(
                          // Lista Horizontal - Trilhas
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          height: 170.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              child: InkWell(
                                  child: Container(
                                    width: 270.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[600],
                                          blurRadius: 4.0,
                                          offset: Offset(1, 1.5),
                                        ),
                                      ],
                                    ),
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
                                        /* Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_financeiro.png',
                                          ),
                                        ), */
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              child: InkWell(
                                  child: Container(
                                    width: 270.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[600],
                                          blurRadius: 4.0,
                                          offset: Offset(1, 1.5),
                                        ),
                                      ]
                                    ),
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
                                        /* Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_tecnologia.png',
                                          ),
                                        ), */
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                              child: InkWell(
                                  child: Container(
                                    width: 270.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[600],
                                          blurRadius: 4.0,
                                          offset: Offset(1, 1.5),
                                        ),
                                      ]
                                    ),
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
                                        /* Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            'assets/img_rh.png',
                                          ),
                                        ), */
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    print('Clicado!!!');
                                  }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),                                        
                                      ),
                                      ],
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
                                        height: 60,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          width: 360.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                            color: Colors.lightBlue[50],
                                          ),
                                          //color: Colors.lightBlue[50],
                                          child: Row(
                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                      'assets/emprestimo.png'
                                                    ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 15, 0, 0),
                                                child: Column(
                                                  children: [
                                                    /* Text(
                                                      'Módulo:',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ), */                                                    
                                                    Text(
                                                      'Meu empréstimo',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 24,
                                                          fontWeight: FontWeight.w300,
                                                      ),
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
                                            'Tecnologia e Inovação -> Clicado!!!');
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
