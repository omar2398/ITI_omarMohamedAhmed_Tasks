import 'package:flutter/material.dart';
import 'package:task_3/screens/quiz.dart';

class Cate_Card extends StatelessWidget {
  const Cate_Card({
    super.key,
    required this.categoryName,
    required this.categoryColor,
  });
  final String categoryName;
  final Color categoryColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height * 1 / 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: categoryColor),
          child: Center(
            child: Text(
              categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}