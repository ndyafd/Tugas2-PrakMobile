import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _checkNumber() {
    final int number = int.tryParse(_controller.text) ?? 0;
    if (number % 2 == 0) {
      setState(() {
        _result = '$number adalah bilangan genap';
      });
    } else {
      setState(() {
        _result = '$number adalah bilangan ganjil';
      });
    }
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Ganjil dan Genap'),
          backgroundColor: const Color.fromARGB(255, 156, 81, 141),
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
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan bilangan',
                  labelStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkNumber,
                child: const Text('Periksa',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black),
                ),
              ),
              const SizedBox(height: 30,),
              Text(_result, style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black),
              ),
            ],
          ),
      ),
    );
  }
}