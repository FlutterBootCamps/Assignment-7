import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_auth_suba/cubit/food_cubit.dart';
import 'package:try_auth_suba/views/cubit_home.dart';
import 'package:try_auth_suba/setup/git_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  gitIt().init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: cubitHome(),
      ),
    );
  }
}
