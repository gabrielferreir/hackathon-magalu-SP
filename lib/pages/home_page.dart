import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/components/custom_drawer.dart';
import 'package:hackathonmagalusp/components/item_product.dart';
import 'package:hackathonmagalusp/components/line.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          children: <Widget>[
            Line(),
            Container(
//              color: Colors.black,
                height: 96,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Row(children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(minRadius: 32),
                      )
                    ]))),

            Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                    width: MediaQuery.of(context).size.width - 16,
                    height: MediaQuery.of(context).size.width / 1.9,
                    child: Center(
                        child: OutlineButton(
                            onPressed: () {}, // TODO
                            child: Text('TROQUE PRODUTOS',
                                style: TextStyle(color: Colors.white)),
                            borderSide: BorderSide(color: Colors.white),
                            shape: StadiumBorder())),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage('images/back.jpeg'),
                            fit: BoxFit.cover)))),

            Container(
              height: (MediaQuery.of(context).size.width * 1.4) / 2,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.4,
                children: <Widget>[ItemProduct(), ItemProduct()],
              ),
            ),
//            Row(
//              children: <Widget>[
//                Text('AAA'),
//                Text('AAA'),
//                Text('AAA'),
//                ItemProduct(),
////                ItemProduct()
//              ],
//            )
          ],
        ),
      ),
    );
  }
}
