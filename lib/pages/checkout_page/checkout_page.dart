import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/models/product_model.dart';
import 'package:hackathonmagalusp/pages/success_page.dart';
import 'package:hackathonmagalusp/repository/request_repository.dart';

class CheckoutPage extends StatefulWidget {
  final ProductModel productModel;

  CheckoutPage(this.productModel);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Revisão do Pedido')),
        body: Stack(children: <Widget>[
          SingleChildScrollView(
              child: Column(children: <Widget>[
            ListTile(
                title: Text('Selecione a loja para retirada',
                    style: TextStyle(fontWeight: FontWeight.w500))),
            Container(
                color: Colors.white,
                width: double.infinity,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton(
                  value: value,
                  hint: Text('Selecione'),
                  onChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  },
                  items: [
                    DropdownMenuItem(child: Text('Loja 01'), value: 1),
                    DropdownMenuItem(child: Text('Loja 02'), value: 2),
                    DropdownMenuItem(child: Text('Loja 03'), value: 3),
                    DropdownMenuItem(child: Text('Loja 04'), value: 4),
                  ],
                ))
          ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: _save,
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

  _save() async {
    await RequestRepository().save(widget.productModel.name,
        widget.productModel.points, widget.productModel.listImages[0]);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }
}
