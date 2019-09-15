import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
//            color: Colors.grey.shade200,
            height: (MediaQuery.of(context).size.width / 2.6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://a-static.mlcdn.com.br/618x463/livro-o-milagre-da-manha/magazineluiza/221896400/eb1311b5bf058ff829d2d7037bacb429.jpg'),
                    fit: BoxFit.contain)),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Text('Livro - A sutil arte de ligar o f*da-se',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'R\$ 50,00',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
