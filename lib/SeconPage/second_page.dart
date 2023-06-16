import 'dart:math';

import 'package:flutter/material.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: result == true ? Colors.green : Colors.red,
        title: const Text(
          'Wynik losowania ',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 27, 210, 73),
                Color.fromARGB(255, 153, 25, 25)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (result == true)
                  const Text(
                    'Prawda\u{1F60A}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 32, 229, 6)),
                  ),
                if (result == false)
                  const Text(
                    'Fałsz\u{1F61E}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 229, 47, 6)),
                  ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: result == true ? Colors.green : Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Losuj ponownie',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
