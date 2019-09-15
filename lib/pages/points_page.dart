import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/components/item_points.dart';
import 'package:hackathonmagalusp/components/line.dart';
import 'package:hackathonmagalusp/models/product_model.dart';
import 'package:hackathonmagalusp/pages/products_page/products_page.dart';
import 'package:hackathonmagalusp/repository/request_repository.dart';

class PointsPage extends StatefulWidget {
  @override
  _PointsPageState createState() => _PointsPageState();
}

class _PointsPageState extends State<PointsPage> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    int qtd = 0;
    if (list.length > 0) {
      for (int i = 0; list.length > i; i++) {
        qtd = qtd + (list[i] as ProductModel).points;
      }
    }
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
        body: Stack(children: <Widget>[
          SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 64),
              child: Column(children: <Widget>[
                Line(),
                Container(
                    height: 194,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Column(children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                borderRadius: BorderRadius.circular(140.0)),
                            child: Stack(
                              children: <Widget>[
                                Center(
                                    child: Text(qtd.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 38,
                                            fontWeight: FontWeight.w500))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 16,
                                        width: 16,
                                        transform: Matrix4.translationValues(
                                            0.0, -8.0, 0.0),
//                              margin: const EdgeInsets.only(top: -16.0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16.0))))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(Icons.monetization_on,
                                      color: Colors.white),
                                ),
                                Text('MEUS PONTOS',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))
                              ])),
                    ])),
                Column(
                  children: list.map((item) => ItemPoints(item)).toList(),
                )
              ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsPage()));
                  },
                  child: Container(
                      color: Colors.blue,
                      height: 56,
                      width: double.infinity,
                      child: Center(
                          child: Text('TROQUE AGORA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14))))))
        ]));
  }

  @override
  void initState() {
    get();
  }

  get() async {
    final products = await RequestRepository().get();
    setState(() {
      list = products;
    });
  }
}
