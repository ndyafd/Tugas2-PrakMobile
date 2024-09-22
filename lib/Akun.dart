import 'package:flutter/material.dart';
void main() {
  runApp(Akun());
}
class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Halaman Data Akun",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: const Color.fromARGB(209, 192, 79, 115),
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

        body: const SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card( //kotak
                  color: Color.fromARGB(179, 255, 211, 211),
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 171, 44, 84),
                    ),
                    title: Text(
                      'Nindya Fadhila 124220059',
                      style: TextStyle(fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(179, 255, 211, 211),
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.class_,
                      color: Color.fromARGB(255, 171, 44, 84),
                    ),
                    title: Text(
                      'Praktikum PAM SI-B',
                      style: TextStyle(fontSize: 20.0,
                        color: Colors.black,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}