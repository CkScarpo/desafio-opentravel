import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'assistente_controller.dart';

class AssistentePage extends StatefulWidget {
  final String title;
  const AssistentePage({Key key, this.title = "Assistente"}) : super(key: key);

  @override
  _AssistentePageState createState() => _AssistentePageState();
}

class _AssistentePageState
    extends ModularState<AssistentePage, AssistenteController> {
  //use 'controller' variable to access controller
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Assitente',
      style: optionStyle,
    ),
    Text(
      'Index 1: Viagens',
      style: optionStyle,
    ),
    Text(
      'Index 2: Despesas',
      style: optionStyle,
    ),
    Text(
      'Index 3: Aprovadores',
      style: optionStyle,
    ),
    Text(
      'Index 4: Perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 244, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  height: 60,
                  child: Text(
                    'Assistente',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 25,
                  child: Text(
                    'VIAGEM (1)',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 295,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(100.0),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              width: 50,
                              height: 25,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/la.png',
                                    width: 40,
                                    height: 50,
                                  ),
                                  Image.asset(
                                    'assets/images/icon_aprovado.png',
                                    width: 50,
                                    height: 13,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 220,
                              height: 40,
                              child: Text(
                                'LATAM AIRLINES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 190,
                              height: 46,
                              child: Stack(
                                children: [
                                  Text(
                                    ' GRU > SFO \n Ida: 25/10/2020 - 14:40 pm \n Volta: 18/11/2020 - 08:00 am',
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              height: 14,
                              child: Text(
                                'LOC: NWGWZQ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 25,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/icon_amazon.png',
                                          width: 30,
                                          height: 70,
                                        ),
                                        Image.asset(
                                          'assets/images/icon_aprovado.png',
                                          width: 50,
                                          height: 13,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                //padding: EdgeInsets.all(1.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      height: 30,
                                      child: Text(
                                        'HOTEL NIKKO',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 215,
                                      height: 46,
                                      child: Stack(
                                        children: [
                                          Text(
                                            ' San Francisco \n Checkin: 26/10/2020 - 15:00 pm \n Checkout: 18/11/2020 - 12:00 pm',
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 205,
                                      height: 14,
                                      child: Text(
                                        'COD: GGDF55466474A',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'FALTA DE COMPROVANTE (2)',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/icon_ibis.png',
                        width: 30,
                        height: 40,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 230,
                            height: 15,
                            child: Text(
                              'Hotel Ibis',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 30,
                                child: Text(
                                  '          R\$ 450,00 \n          22 Jul. 15:45 pm',
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/icon_99.png',
                        width: 30,
                        height: 40,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 230,
                            height: 15,
                            child: Text(
                              '99 Taxi',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 30,
                                child: Text(
                                  '          R\$ 55,00 \n          25 Jul. 12:00 pm',
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_assistente.png'),
              color: Color(0xFF282828),
            ),
            label: 'Assitente',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_viagens.png'),
              color: Color(0xFF282828),
            ),
            label: 'Viagens',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_despesas.png'),
              color: Color(0xFF282828),
            ),
            label: 'Despesas',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_aprovadores.png'),
              color: Color(0xFF282828),
            ),
            label: 'Aprovadores',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_perfil.png'),
              color: Color(0xFF282828),
            ),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
