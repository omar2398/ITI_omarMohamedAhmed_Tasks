import 'package:flutter/material.dart';
import 'package:task_3/screens/categories.dart';
import 'package:task_3/screens/home.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Congratulations Andro, you have finished the quiz and your score is :',
            ),
            const Text(
              '14/20',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const CategoryScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Play Again',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Exit',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
