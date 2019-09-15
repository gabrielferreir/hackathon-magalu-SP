import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/pages/home/home_page.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text('Pedido realizado'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.green,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Pedido realizado com sucesso!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Você receberá um e-mail com os dados da troca',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ),
              FlatButton(
                child: Text('VOLTAR PARA A HOME',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
