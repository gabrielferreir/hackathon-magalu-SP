import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/components/item_product.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/item_product_points.dart';
import 'package:hackathonmagalusp/components/line.dart';
import 'package:hackathonmagalusp/models/product_model.dart';
import 'package:hackathonmagalusp/repository/products_repository.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool loading = true;
  List<ProductModel> list = [];

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
        body: loading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: <Widget>[
                  Line(),
                  Expanded(
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.4,
                      children: list.map((item) => ItemProductPoints(item)).toList(),
                    ),
                  )
                ],
              ));
  }

  @override
  void initState() {
    get();
  }

  get() async {
    final products = await ProductsRepository().getCaldaLonga();
    setState(() {
      loading = false;
      list = products;
    });
  }
}
