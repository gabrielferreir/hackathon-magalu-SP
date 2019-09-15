import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Revisão do Pedido'),
        ),
        body: Stack(children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListTile(
                    title: Text('Endereço de entrega',
                        style: TextStyle(fontWeight: FontWeight.w500))),
                Container(
                    width: double.infinity,
                    child: Card(
                        elevation: 0,
                        child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Rua TANANANAM, 1231',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('JARDIM TTA TUS TA - FRANCA/SP'),
                                    Text('14402-336')
                                  ],
                                ),
                                IconButton(icon: Icon(Icons.edit))
                              ],
                            )))),
                ListTile(
                    title: Text('Selecione a forma de entrega',
                        style: TextStyle(fontWeight: FontWeight.w500))),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Radio(),
                        title: Text('Retira loja'),
                      ),
                      ListTile(
                        leading: Radio(),
                        title: Text('Retira loja'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  child: Container(
                      width: double.infinity,
                      height: 56,
                      color: Colors.blue,
                      child: Center(
                          child: Text('CONCLUIR PEDIDO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14))))))
        ]));
  }
}