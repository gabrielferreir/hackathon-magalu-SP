import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPoints extends StatefulWidget {
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
              children: <Widget>[Text('Pedido 74673427842784'), Text('22/AGO')],
            ),
          ),
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
                            image: NetworkImage(
                                'https://a-static.mlcdn.com.br/618x463/livro-o-milagre-da-manha/magazineluiza/221896400/eb1311b5bf058ff829d2d7037bacb429.jpg'),
                            fit: BoxFit.contain))),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: SizedBox(
                              width: 200,
                              child: Text(
                                  'Notebook Lenovo Ideapad 330 Intel Core I7 8GB 1TB'))),
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
                                      '200',
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ]))
                    ])
              ]))
        ])));
  }
}
