import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hma_assignment_7/cubit/random_food_cubit.dart';
import 'package:hma_assignment_7/screens/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomFoodCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen(),
      ),
    );
  }
}
