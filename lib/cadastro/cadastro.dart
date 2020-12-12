import 'package:flutter/material.dart';
import 'package:projeto_estimulo_2020/menu/menu.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  TextEditingController nomeController = TextEditingController();
  getNome(){
    return this.nomeController;
  }
  
  //ArgumentosDaRota teste;

  bool termosDeUso = false;
  bool whatsapp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/PEicone.png',
                  scale: 2.0,
                ),
              ),
              SizedBox(
                height: 30,
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
                height: 10,
              ),
              Container(
                height: 290,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 10.0,
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
                            controller: nomeController,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Nome Completo",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[100]))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 1, 0, 1),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[100]))),
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
                            'Li e concordo com os termos de uso e política de privacidade',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
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
                            'Eu aceito receber mensagens por WhatsApp relacionadas a iniciativa Estímulo 2020',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
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
                onPressed: () {
                  
                  //teste = ArgumentosDaRota(nomeController.text, teste);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu(nomeUsuario: '${nomeController.text}')),
                  );
                },
                child: Text(
                  "Cadastrar",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}

// class ArgumentosDaRota {
//   String nome = 'Cassandra Linda';
//   List<ArgumentosDaRota> objArg;

//   ArgumentosDaRota(String nome, ArgumentosDaRota obj){
//     this.nome = nome;
//     this.objArg.add(obj);
//     //setObjArg(this);
//   }

//   // setObjArg(ArgumentosDaRota obj){
//   //   this.objArg = obj;
//   // }

//   ArgumentosDaRota getObjArg(){
//     return this.objArg[0];
//   }

// }