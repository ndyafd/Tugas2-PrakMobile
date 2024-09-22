import 'package:flutter/material.dart';
import 'package:tugas1/dashboard.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 35,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 7),
            Text(
              'Praktikum Pemrograman Aplikasi Mobile',
              style: TextStyle(
                color: Colors.blueGrey[400],
                fontSize: 20,
                letterSpacing: 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextFormField(
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white70, width: 2.0),
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  contentPadding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder( //input
                    borderSide:
                    const BorderSide(color: Colors.white70, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: ('Username'),
                  hintText: '',
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(Icons.person, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextFormField(
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white70, width: 2.0),
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  contentPadding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder( //input
                    borderSide:
                    const BorderSide(color: Colors.white70, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: ('Password'),
                  hintText: '',
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(Icons.lock, color: Colors.black),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //kehalaman Navgar
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const Dashboard()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
