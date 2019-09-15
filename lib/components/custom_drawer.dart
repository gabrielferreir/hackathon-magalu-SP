import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathonmagalusp/pages/home_page.dart';
import 'package:hackathonmagalusp/pages/points_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
            child: Container(
                color: Colors.grey.shade200,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                              color: Colors.white,
                              child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(children: <Widget>[
                                    CircleAvatar(
                                        child: Text('G'),
                                        backgroundColor: Colors.blue),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('GABRIEL FERREIRA',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14)),
                                              Text(
                                                'gabrielferreira@gmail.com',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.black54),
                                              )
                                            ]))
                                  ]))),
                          _itemMenu(
                              context: context,
                              title: 'Inicio',
                              icon: Icons.home,
                              withSpace: true,
                              page: HomePage()),
                          _itemMenu(
                              context: context,
                              title: 'Departamentos',
                              icon: Icons.list,
                              withSpace: true),
                          _itemMenu(
                              context: context,
                              title: 'Mensagens',
                              icon: Icons.email,
                              withSpace: true),
                          _itemMenu(
                              context: context,
                              title: 'Pedidos',
                              icon: FontAwesomeIcons.box,
                              withSpace: true,
                              fontAwesome: true),
                          _itemMenu(
                              context: context,
                              title: 'Favoritos',
                              icon: Icons.favorite),
                          _itemMenu(
                              context: context,
                              title: 'Ultimos produtos vistos',
                              icon: Icons.access_time),
                          _itemMenu(
                              context: context,
                              title: 'MagaPoints',
                              icon: Icons.monetization_on,
                              page: PointsPage()),
                          _itemMenu(
                              context: context,
                              title: 'Clube da Lu',
                              icon: Icons.assignment_turned_in),
                          _itemMenu(
                              context: context,
                              title: 'Sacola',
                              icon: FontAwesomeIcons.shoppingBag,
                              fontAwesome: true),
                          _itemMenu(
                              context: context,
                              title: 'Dados pessoais',
                              icon: Icons.person,
                              withSpace: true),
                          _itemMenu(
                              context: context,
                              title: 'Endereços',
                              icon: Icons.location_on),
                          _itemMenu(
                              context: context,
                              title: 'Cartões de crédito',
                              icon: Icons.credit_card),
                          _itemMenu(
                              context: context,
                              title: 'Senha de acesso',
                              icon: Icons.lock),
                        ],
                      ),
                    )))));
  }

  Widget _itemMenu(
      {@required String title,
      @required IconData icon,
      @required BuildContext context,
      bool withSpace = false,
      bool fontAwesome = false,
      Widget page}) {
    return Column(
      children: <Widget>[
        Container(height: withSpace ? 8.0 : 0),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(icon, size: fontAwesome ? 20 : null),
            title: Text(title, style: TextStyle(color: Colors.black54)),
            onTap: page != null
                ? () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page))
                : null,
          ),
        )
      ],
    );
  }
}
