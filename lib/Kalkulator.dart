import 'package:flutter/material.dart';

void main() {
  runApp(Kalkulator());
}

class Kalkulator extends StatelessWidget {
  const Kalkulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: KalkulatorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  String text = ""; // Inisialisasi variabel untuk menampilkan input pengguna
  late int first, second;
  late String res = "", opp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Kalkulator'),
          backgroundColor: const Color.fromARGB(255, 208, 91, 107),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white,
              )),
          titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                customOutlineButton("9"),
                customOutlineButton("8"),
                customOutlineButton("7"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("6"),
                customOutlineButton("5"),
                customOutlineButton("4"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("3"),
                customOutlineButton("2"),
                customOutlineButton("1"),
                customOutlineButton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("C"),
                customOutlineButton("0"),
                customOutlineButton("="),
                customOutlineButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customOutlineButton(String val) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => btnClicked(val), // Panggil btnClicked saat tombol ditekan
        child: Text(
          val,
          style: const TextStyle(fontSize: 35.0, color: Colors.blueGrey),
        ),
      ),
    );
  }

  void btnClicked(String btnText) {
    if (btnText == "C") {
      setState(() {
        text = "";
        res = "";
        first = 0;
        second = 0;
        opp = "";
      });
    } else if (btnText == "+" || btnText == "-" || btnText == "x" || btnText == "/") {
      first = int.parse(text);
      res = "";
      opp = btnText;
      setState(() {
        text = ""; // Bersihkan layar setelah operator ditekan
      });
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        res = (first + second).toString();
      } else if (opp == "-") {
        res = (first - second).toString();
      } else if (opp == "x") {
        res = (first * second).toString();
      } else if (opp == "/") {
        res = (first ~/ second).toString(); // Operasi pembagian integer
      }
      setState(() {
        text = res; // Tampilkan hasil operasi
      });
    } else {
      setState(() {
        text = text + btnText; // Menambah angka yang ditekan ke layar
      });
    }
  }
}