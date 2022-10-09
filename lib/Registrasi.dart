import 'package:flutter/material.dart';
import 'package:halobca/HomePage.dart';

class Registrasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBar(
              leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        )),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              title: Text('Registrasi',
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
          Container(
            margin: const EdgeInsets.only(top: 100, right: 30, left: 30),
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: SizedBox(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Pilih Kartu/Rekening",
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 105, 50),
                    ),
                    Icon(Icons.expand_more)
                  ],
                ),
                onPressed: () {},
                textColor: Colors.white,
                color: Color(0x9b363648),
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0x9b363648)),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 165, right: 30, left: 30),
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: SizedBox(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Nomor Kartu/Rekening",
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 105, 50),
                    ),
                  ],
                ),
                onPressed: () {},
                textColor: Color(0xffe9e3e3),
                color: Color(0x9b363648),
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0x9b363648)),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 230, right: 30, left: 30),
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: SizedBox(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Password Aplikasi (6 alphanum)",
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 50, 50),
                    ),
                  ],
                ),
                onPressed: () {},
                textColor: Color(0xffe9e3e3),
                color: Color(0x9b363648),
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0x9b363648)),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 295, right: 30, left: 30),
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: SizedBox(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Konfirmasi Password Aplikasi",
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 70, 50),
                    ),
                  ],
                ),
                onPressed: () {},
                textColor: Color(0xffe9e3e3),
                color: Color(0x9b363648),
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0x9b363648)),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 360, right: 30, left: 30),
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: SizedBox(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "LANJUT",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120, top: 20, bottom: 20),
                    ),
                  ],
                ),
                onPressed: () {},
                textColor: Color(0x9b1e1e21),
                color: Color(0xffc7c2c2),
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2,
                        color: Color(0xffc7c2c2)),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
