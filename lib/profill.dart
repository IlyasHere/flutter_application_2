import 'package:flutter/material.dart';
import 'package:flutterblajar/main.dart';
import 'package:flutterblajar/pagekedua.dart';

class SecondPage extends StatefulWidget {
  String nama, kls, jrsn;

  SecondPage(
      {Key? key,
      required this.nama,
      required this.kls,
      required this.jrsn,})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // final String? nick, usn, addreS, notlp;
  //
  //
  // _SecondPageState(this.nick, this.usn, this.addreS, this.notlp);

  Widget btnFunction(String text) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Second Page"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
               
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("Nama Kamu : " + widget.nama),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("kelas: " + widget.kls),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("jurusann : " + widget.jrsn),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  final newValue = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));

                  setState(() {
                    widget.nama = newValue[1];
                    widget.kls= newValue[2];
                    widget.jrsn = newValue[3];

                  });
                },
                child: Text("edit profil"))
          ],
        ),
      ),
    );
  }
}