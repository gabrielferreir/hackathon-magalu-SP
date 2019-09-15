import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/components/line.dart';

class DetailProduct extends StatefulWidget {
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
            child: Column(children: <Widget>[Line(), _slider()])));
  }

  Widget _slider() {
    return Container(
        width: double.infinity,
        height: 300.0,
        child: DefaultTabController(
            length: 4,
            child: PageView(children: <Widget>[
              Container(
                  width: double.infinity, height: 300.0, color: Colors.red),
              Container(
                  width: double.infinity, height: 300.0, color: Colors.blue),
              Container(
                  width: double.infinity, height: 300.0, color: Colors.green),
              Container(
                  width: double.infinity, height: 300.0, color: Colors.yellow)
            ])));
  }
}
