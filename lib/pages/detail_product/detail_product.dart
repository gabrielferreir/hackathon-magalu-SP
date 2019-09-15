import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/components/line.dart';
import 'package:hackathonmagalusp/models/product_model.dart';

import '../checkout_page.dart';

class DetailProduct extends StatefulWidget {
  final ProductModel productModel;

  DetailProduct(this.productModel);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detalhes'), actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(FontAwesomeIcons.shoppingBag), onPressed: () {})
        ]),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Line(),
          _slider(widget.productModel.listImages),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.productModel.name,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
          ),
          _rating(),
          trade(),
          description()
        ])));
  }

  Widget _slider(List<String> images) {
    return Container(
        width: double.infinity,
        height: 300.0,
        child: DefaultTabController(
            length: 4,
            child: PageView(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[0]), fit: BoxFit.contain)),
                width: double.infinity,
                height: 300.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(images[1]), fit: BoxFit.contain)),
                  width: double.infinity,
                  height: 300.0),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(images[2]), fit: BoxFit.contain)),
                  width: double.infinity,
                  height: 300.0)
            ])));
  }

  Widget _rating() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.amber, size: 20),
                Icon(Icons.star, color: Colors.grey, size: 20)
              ]),
              Row(children: <Widget>[
                IconButton(
                    icon: Icon(Icons.share, color: Colors.black54),
                    onPressed: () {}),
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.black54),
                  onPressed: () {},
                )
              ])
            ]));
  }

  Widget trade() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
            width: double.infinity,
            height: 48,
            child: RaisedButton.icon(
                elevation: 0.0,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()));
                },
                icon: Icon(FontAwesomeIcons.shoppingBag, color: Colors.white),
                label: Text('REALIZAR TROCA',
                    style: TextStyle(color: Colors.white)))));
  }

  Widget description() {
    return Column(children: <Widget>[
      ListTile(title: Text('Apresentação do produto')),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(widget.productModel.description),
      )
    ]);
  }
}
