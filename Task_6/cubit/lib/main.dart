// main.dart
import 'package:cubit/Cubits/firstScreenCubit.dart';
import 'package:cubit/Cubits/lastScreenCubit.dart';
import 'package:cubit/Cubits/secondScreenCubit.dart';
import 'package:cubit/Screens/firstScreen.dart';
import 'package:cubit/Screens/lastScreenCubit.dart';
import 'package:cubit/Screens/secondScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FilterBarCubit()),
        BlocProvider(create: (_) => ShowHideTextCubit()),
        BlocProvider(create: (_) => RadioCubit()),
      ],
      child: MaterialApp(
        home: lastScreen(),
        routes: {
          '/cubit_screen': (context) => firstScreen(),
          '/radio_screen': (context) => secondScreen(),
          '/set_state_screen': (context) => lastScreen(),
        },
      ),
    );
  }
}
