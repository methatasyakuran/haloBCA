import 'package:flutter/material.dart';
import 'package:halobca/Call.dart';
import 'package:halobca/Chat.dart';
import 'package:halobca/Registrasi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                Color(0xFF01579B),
                Color(0xFF81D4FA),
              ]))),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    child: Row(children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('haloBCA',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Text('halo, silakan pilih',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              )),
                          Text('layanan kami',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white))
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top: 100, right: 50, left: 50),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Call(),
                    )),
                child: new Container(
                  padding: const EdgeInsets.all(8),
                  color: Color(0x9b363648),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.red,
                        size: 40,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(
                            color: Colors.white, fontSize: 10, height: 2.3),
                      )
                    ],
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chat(),
                    )),
                child: new Container(
                  padding: const EdgeInsets.all(8),
                  color: Color(0x9b363648),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        size: 40,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        "\HALO BCA \nCHAT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Color(0x9b363648),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      size: 40,
                      color: Color(0xfff1c32c),
                    ),
                    Text(
                      "EMAIL",
                      style: TextStyle(
                        height: 2.3,
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    )
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
                      'assets/images/twitter.png',
                      width: 52,
                    ),
                    Text(
                      "\nTWITTER",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 240),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Silakan registrasi untuk proses yang lebih mudah",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 420, right: 50),
            child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: Color(0xffffec54),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xffffec54),
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  "REGISTRASI",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registrasi()));
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 478, right: 50),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              onPressed: () {},
              color: Color(0x9b363648),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                "PENGKINIAN DATA",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
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
