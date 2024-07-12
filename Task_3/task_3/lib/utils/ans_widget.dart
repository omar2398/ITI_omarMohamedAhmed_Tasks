import 'package:flutter/material.dart';
import 'package:task_3/screens/score.dart';

class Ans_widget extends StatelessWidget {
  const Ans_widget({
    super.key,
    required this.answer,
  });
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Score(),
                ),
              );
            },
            child: Text(
              answer,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}