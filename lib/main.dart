import 'package:flutter/material.dart';
import 'cadastro/cadastro.dart';
import 'menu/menu.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Positioned(
            child: Container(
                //height: 1000,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/loginScreen.png'),
                      fit: BoxFit.cover),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      child: Container(
                          margin: EdgeInsets.only(top: 0, left: 10),
                          child: Center())),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 500, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[600],
                                    blurRadius: 8.0,
                                    offset: Offset(1, 1.5))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Telefone / E-mail",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Senha",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 1, 55, 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Cadastro()),
                                          );
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 0),
                                          child: Text(
                                            "Ainda não tenho um cadastro",
                                            style: TextStyle(
                                                color: Colors.blueAccent[700]
                                                    .withOpacity(0.9),
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 0),
                                          child: Text(
                                            "Esqueci minha senha",
                                            style: TextStyle(
                                                color: Colors.blueAccent[700]
                                                    .withOpacity(0.9),
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Colors.blue[400],
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Menu()),
                                  );
                                },
                                child: Text(
                                  "             Entrar             ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ],
      )),
    );
  }
}
