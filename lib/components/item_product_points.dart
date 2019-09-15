import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/models/product_model.dart';
import 'package:hackathonmagalusp/pages/detail_product.dart';

class ItemProductPoints extends StatelessWidget {
  final ProductModel productModel;

  ItemProductPoints(this.productModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailProduct()));
      },
      child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Container(
                height: (MediaQuery.of(context).size.width / 3),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(productModel.listImages[0]),
                        fit: BoxFit.contain))),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child: Text(productModel.name,
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w500))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(children: <Widget>[
                  Icon(Icons.monetization_on, color: Colors.blue),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(productModel.points.toString(),
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  )
                ]))
          ])),
    );
  }
}
