import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';

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
            child: Text('Pedido realizado com sucesso!',
                style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
