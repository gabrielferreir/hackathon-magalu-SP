import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/models/product_model.dart';

class ItemProduct extends StatelessWidget {
  final ProductModel productModel;

  ItemProduct(this.productModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
//            color: Colors.grey.shade200,
              height: (MediaQuery.of(context).size.width / 3),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(productModel.listImages[0]),
                      fit: BoxFit.contain))),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Text(productModel.name,
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'R\$ ${productModel.price.toStringAsFixed(2).replaceFirst('.', ',')}',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ))
        ]));
  }
}
