// radio_screen.dart
import 'package:cubit/Cubits/lastScreenCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second Screen')),
      body: BlocBuilder<RadioCubit, RadioState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return RadioListTile(
                title: Text('${index + 1}'),
                value: index,
                groupValue: state.radioIndex,
                onChanged: (value) {
                  context.read<RadioCubit>().selectRadio(value!);
                },
              );
            },
          );
        },
      ),
    );
  }
}
