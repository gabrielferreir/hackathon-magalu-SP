import 'package:flutter/material.dart';
import 'package:hackathonmagalusp/pages/detail_product.dart';

class ItemProductPoints extends StatelessWidget {
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
                        image: NetworkImage(
                            'https://a-static.mlcdn.com.br/618x463/livro-o-milagre-da-manha/magazineluiza/221896400/eb1311b5bf058ff829d2d7037bacb429.jpg'),
                        fit: BoxFit.contain))),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child: Text('Livro - O Milagre da Manhã',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w500))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(children: <Widget>[
                  Icon(Icons.monetization_on, color: Colors.blue),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('500',
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
