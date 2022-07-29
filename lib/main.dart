import 'package:flutter/material.dart';
import 'package:flutterblajar/pagekedua.dart';
import 'package:flutterblajar/profill.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController inptNama = TextEditingController();
  TextEditingController inptKelas= TextEditingController();
  TextEditingController inptJurusan = TextEditingController();

  Widget textFiled(TextEditingController controller, String text) {
    return TextField(
      controller: controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: text),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("First Page"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Daftar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(inptNama, "Masukkan nama anda"),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(inptKelas, "Masukkan kelas anda"),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(inptJurusan, "Masukkan jurusan anda"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(
                                    nama: inptNama.text,
                                    kls: inptKelas.text,
                                    jrsn: inptJurusan.text,
                                  )));
                    },
                    child: Text("Buat akun")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}