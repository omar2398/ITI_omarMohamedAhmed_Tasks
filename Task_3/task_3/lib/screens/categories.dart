import 'package:flutter/material.dart';
import 'package:task_3/utils/cate_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  final List namesList = const ['IQ quiz', 'sports quiz', 'science quiz'];
  final List colorsList = const [Colors.red, Colors.blue, Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < namesList.length; i++)
            Cate_Card(
              categoryName: namesList[i],
              categoryColor: colorsList[i],
            ),
        ],
      ),
    );
  }
}
