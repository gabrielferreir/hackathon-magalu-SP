import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14)),
                                              Text(
                                                'gabrielferreira@gmail.com',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.black54),
                                              )
                                            ]))
                                  ]))),
                          _itemMenu(title: 'Inicio', icon: Icons.home, withSpace: true),
                          _itemMenu(title: 'Departamentos', icon: Icons.list, withSpace: true),
                          _itemMenu(title: 'Mensagens', icon: Icons.email, withSpace: true),
                          _itemMenu(title: 'Pedidos', icon: FontAwesomeIcons.box, withSpace: true, fontAwesome: true),
                          _itemMenu(title: 'Favoritos', icon: Icons.favorite),
                          _itemMenu(title: 'Ultimos produtos vistos', icon: Icons.access_time),
                          _itemMenu(title: 'MagaPoints', icon: Icons.monetization_on),
                          _itemMenu(title: 'Clube da Lu', icon: Icons.assignment_turned_in),
                          _itemMenu(title: 'Sacola', icon: FontAwesomeIcons.shoppingBag, fontAwesome: true),
                          _itemMenu(title: 'Dados pessoais', icon: Icons.person, withSpace: true),
                          _itemMenu(title: 'Endereços', icon: Icons.location_on),
                          _itemMenu(title: 'Cartões de crédito', icon: Icons.credit_card),
                          _itemMenu(title: 'Senha de acesso', icon: Icons.lock),
                        ],
                      ),
                    )))));
  }

  Widget _itemMenu({@required String title, @required IconData icon, bool withSpace = false, bool fontAwesome = false}) {
    return Column(
      children: <Widget>[
        Container(height: withSpace ? 8.0 : 0),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(icon, size: fontAwesome ? 20 : null),
            title: Text(title, style: TextStyle(color: Colors.black54)),
          ),
        )
      ],
    );
  }
}
