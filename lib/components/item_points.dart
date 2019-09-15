import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/models/product_model.dart';

class ItemPoints extends StatefulWidget {
  final ProductModel productModel;

  ItemPoints(this.productModel);

  @override
  _ItemPointsState createState() => _ItemPointsState();
}

class _ItemPointsState extends State<ItemPoints> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
            child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 16.0, right: 16.0, bottom: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Pedido 74673427842784'),
                    Text('15/AGO')
                  ])),
          Divider(),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 8.0, right: 16.0, bottom: 16.0),
              child: Row(children: <Widget>[
                Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                NetworkImage(widget.productModel.listImages[0]),
                            fit: BoxFit.contain))),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: SizedBox(
                              width: 200,
                              child: Text(widget.productModel.name))),
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.monetization_on, color: Colors.blue),
                                Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      widget.productModel.points.toString(),
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ]))
                    ])
              ]))
        ])));
  }
}
