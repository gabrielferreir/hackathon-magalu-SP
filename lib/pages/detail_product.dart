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
        drawer: CustomDrawer(),
        appBar: AppBar(
            title: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset('images/logo.svg', height: 20)),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(
                  icon: Icon(FontAwesomeIcons.shoppingBag), onPressed: () {})
            ]),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Line(),
        ])));
  }
}
