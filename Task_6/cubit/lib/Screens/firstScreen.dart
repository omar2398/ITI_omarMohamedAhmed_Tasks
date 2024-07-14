// cubit_screen.dart
import 'package:cubit/Cubits/firstScreenCubit.dart';
import 'package:cubit/Cubits/secondScreenCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first Screen')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<FilterBarCubit, FilterBarState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: state.filterNames.map((name) {
                      final index = state?.filterNames.indexOf(name);
                      final isSelected = index == state.selectedIndex;
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isSelected ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            context.read<FilterBarCubit>().selectButton(index!);
                          },
                          child: Text(
                            name,
                            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<ShowHideTextCubit, ShowHideTextState>(
              builder: (context, state) {
                return TextField(
                  obscureText: state.isObscure,
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        context.read<ShowHideTextCubit>().showHideText();
                      },
                      icon: state.suffixIcon,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 50),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          //   onPressed: () {
          //     context.read<ShowHideTextCubit>().showHideText();
          //   },
          //   child: const Text('Show Text', style: TextStyle(color: Colors.white)),
          // ),
          // SizedBox(height:40 ,),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          //   onPressed: () {},
          //   child: const Text('Show cubit image', style: TextStyle(color: Colors.white)),
          // ),
          // SizedBox(height:40 ,),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          //   onPressed: () {},
          //   child: const Text('Show the red circle', style: TextStyle(color: Colors.white)),
          // ),
          // SizedBox(height:40 ,),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          //   onPressed: () {},
          //   child: const Text('Reset', style: TextStyle(color: Colors.white)),
          // ),
        ],
      ),
    );
  }
}
