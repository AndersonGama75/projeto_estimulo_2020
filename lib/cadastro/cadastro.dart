import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool termosDeUso = false;
  bool whatsapp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 130,
              ),
              Center(
                child: Image.asset(
                  'assets/PEicone.png',
                  scale: 2.0,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Seja bem vindo !',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'Insira seus dados abaixo para ter acesso \nao aplicativo do Projeto Estímulo 2020!'),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 315,
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 8.0,
                          offset: Offset(1, 1.5))
                    ]),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[100]))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Nome Completo",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Telefone",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          )),
                      CheckboxListTile(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: termosDeUso,
                          title: Text(
                              'Li e concordo com os termos de uso e política de privacidade'),
                          onChanged: (bool value) {
                            setState(() {
                              termosDeUso = value;
                            });
                          }),
                      CheckboxListTile(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: whatsapp,
                          title: Text(
                              'Eu aceito receber mensagens por WhatsApp relacionadas a iniciativa Estímulo 2020'),
                          onChanged: (bool value) {
                            setState(() {
                              whatsapp = value;
                            });
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.blue[400],
                onPressed: () {},
                child: Text(
                  "             Cadastrar             ",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
