import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halobca/HomePage.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBar(
              leading: Icon(Icons.arrow_back_ios),
              title: Text('Halo BCA Chat',
                  style: TextStyle(color: Color(0xffe9c75a))),
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[
                    Color(0xFF01579B),
                    Color(0xFF81D4FA),
                  ])))),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top: 250, right: 50, left: 50),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Color(0x9b363648),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/whatsapp.png',
                      width: 80,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Color(0x9b363648),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/chat.png',
                      width: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top: 330, right: 50, left: 50),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WhatsApp \nBank BCA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              backgroundColor: Color(0x9b363648),
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              selectedItemColor: Colors.white,
              unselectedItemColor: Color(0xffd4d3d3),
              items: [
                BottomNavigationBarItem(
                  label: "Beranda",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Histori",
                  icon: Icon(Icons.history),
                ),
                BottomNavigationBarItem(
                    label: "Status Laporan", icon: Icon(Icons.data_saver_off)),
                BottomNavigationBarItem(
                  label: "Akun Saya",
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
